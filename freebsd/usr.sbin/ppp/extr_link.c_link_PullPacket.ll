; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_link.c_link_PullPacket.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_link.c_link_PullPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.mbuf* (%struct.bundle*, %struct.link*, %struct.mbuf*, i64*)* }
%struct.mbuf = type { %struct.mbuf* }
%struct.bundle = type { i32 }

@LAYER_MAX = common dso_local global i32 0, align 4
@MB_UNKNOWN = common dso_local global i32 0, align 4
@LogDEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"link_PullPacket: Despatch proto 0x%04x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @link_PullPacket(%struct.link* %0, i8* %1, i64 %2, %struct.bundle* %3) #0 {
  %5 = alloca %struct.link*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bundle*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.link* %0, %struct.link** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.bundle* %3, %struct.bundle** %8, align 8
  %16 = load i32, i32* @LAYER_MAX, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca %struct.mbuf*, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load i32, i32* @LAYER_MAX, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i64, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %23 = load %struct.link*, %struct.link** %5, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @link_AddInOctets(%struct.link* %23, i64 %24)
  %26 = mul nuw i64 8, %17
  %27 = trunc i64 %26 to i32
  %28 = call i32 @memset(%struct.mbuf** %19, i8 signext 0, i32 %27)
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* @MB_UNKNOWN, align 4
  %31 = call %struct.mbuf* @m_get(i64 %29, i32 %30)
  %32 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %19, i64 0
  store %struct.mbuf* %31, %struct.mbuf** %32, align 16
  %33 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %19, i64 0
  %34 = load %struct.mbuf*, %struct.mbuf** %33, align 16
  %35 = call i32 @MBUF_CTOP(%struct.mbuf* %34)
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @memcpy(i32 %35, i8* %36, i64 %37)
  %39 = getelementptr inbounds i64, i64* %22, i64 0
  store i64 0, i64* %39, align 16
  store i32 0, i32* %15, align 4
  br label %40

40:                                               ; preds = %138, %57, %4
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %19, i64 %45
  %47 = load %struct.mbuf*, %struct.mbuf** %46, align 8
  %48 = icmp ne %struct.mbuf* %47, null
  br label %49

49:                                               ; preds = %43, %40
  %50 = phi i1 [ true, %40 ], [ %48, %43 ]
  br i1 %50, label %51, label %139

51:                                               ; preds = %49
  %52 = load i32, i32* %15, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %19, i64 %53
  %55 = load %struct.mbuf*, %struct.mbuf** %54, align 8
  %56 = icmp eq %struct.mbuf* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* %15, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %15, align 4
  br label %40

60:                                               ; preds = %51
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %19, i64 %62
  %64 = load %struct.mbuf*, %struct.mbuf** %63, align 8
  store %struct.mbuf* %64, %struct.mbuf** %9, align 8
  %65 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %66 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %65, i32 0, i32 0
  %67 = load %struct.mbuf*, %struct.mbuf** %66, align 8
  %68 = load i32, i32* %15, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %19, i64 %69
  store %struct.mbuf* %67, %struct.mbuf** %70, align 8
  %71 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %72 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %71, i32 0, i32 0
  store %struct.mbuf* null, %struct.mbuf** %72, align 8
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %22, i64 %74
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %14, align 8
  %77 = load %struct.link*, %struct.link** %5, align 8
  %78 = getelementptr inbounds %struct.link, %struct.link* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %78, align 8
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %79, i64 %81
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load %struct.mbuf* (%struct.bundle*, %struct.link*, %struct.mbuf*, i64*)*, %struct.mbuf* (%struct.bundle*, %struct.link*, %struct.mbuf*, i64*)** %84, align 8
  %86 = icmp ne %struct.mbuf* (%struct.bundle*, %struct.link*, %struct.mbuf*, i64*)* %85, null
  br i1 %86, label %87, label %101

87:                                               ; preds = %60
  %88 = load %struct.link*, %struct.link** %5, align 8
  %89 = getelementptr inbounds %struct.link, %struct.link* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %89, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %90, i64 %92
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load %struct.mbuf* (%struct.bundle*, %struct.link*, %struct.mbuf*, i64*)*, %struct.mbuf* (%struct.bundle*, %struct.link*, %struct.mbuf*, i64*)** %95, align 8
  %97 = load %struct.bundle*, %struct.bundle** %8, align 8
  %98 = load %struct.link*, %struct.link** %5, align 8
  %99 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %100 = call %struct.mbuf* %96(%struct.bundle* %97, %struct.link* %98, %struct.mbuf* %99, i64* %14)
  store %struct.mbuf* %100, %struct.mbuf** %9, align 8
  br label %101

101:                                              ; preds = %87, %60
  %102 = load i32, i32* %15, align 4
  %103 = load %struct.link*, %struct.link** %5, align 8
  %104 = getelementptr inbounds %struct.link, %struct.link* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sub nsw i32 %105, 1
  %107 = icmp eq i32 %102, %106
  br i1 %107, label %108, label %128

108:                                              ; preds = %101
  br label %109

109:                                              ; preds = %112, %108
  %110 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %111 = icmp ne %struct.mbuf* %110, null
  br i1 %111, label %112, label %127

112:                                              ; preds = %109
  %113 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %114 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %113, i32 0, i32 0
  %115 = load %struct.mbuf*, %struct.mbuf** %114, align 8
  store %struct.mbuf* %115, %struct.mbuf** %12, align 8
  %116 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %117 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %116, i32 0, i32 0
  store %struct.mbuf* null, %struct.mbuf** %117, align 8
  %118 = load i32, i32* @LogDEBUG, align 4
  %119 = load i64, i64* %14, align 8
  %120 = call i32 @log_Printf(i32 %118, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %119)
  %121 = load %struct.bundle*, %struct.bundle** %8, align 8
  %122 = load %struct.link*, %struct.link** %5, align 8
  %123 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %124 = load i64, i64* %14, align 8
  %125 = call i32 @Despatch(%struct.bundle* %121, %struct.link* %122, %struct.mbuf* %123, i64 %124)
  %126 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  store %struct.mbuf* %126, %struct.mbuf** %9, align 8
  br label %109

127:                                              ; preds = %109
  br label %138

128:                                              ; preds = %101
  %129 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %130 = load i32, i32* %15, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %19, i64 %132
  store %struct.mbuf* %129, %struct.mbuf** %133, align 8
  %134 = load i64, i64* %14, align 8
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %22, i64 %136
  store i64 %134, i64* %137, align 8
  br label %138

138:                                              ; preds = %128, %127
  br label %40

139:                                              ; preds = %49
  %140 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %140)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @link_AddInOctets(%struct.link*, i64) #2

declare dso_local i32 @memset(%struct.mbuf**, i8 signext, i32) #2

declare dso_local %struct.mbuf* @m_get(i64, i32) #2

declare dso_local i32 @memcpy(i32, i8*, i64) #2

declare dso_local i32 @MBUF_CTOP(%struct.mbuf*) #2

declare dso_local i32 @log_Printf(i32, i8*, i64) #2

declare dso_local i32 @Despatch(%struct.bundle*, %struct.link*, %struct.mbuf*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
