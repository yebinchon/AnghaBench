; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_mss_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_mss_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mss_info = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"mss_intr\0A\00", align 1
@MSS_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"mss_intr: irq, but not from mss\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"mss_intr: unexpected irq with reason %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mss_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mss_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mss_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.mss_info*
  store %struct.mss_info* %8, %struct.mss_info** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @DEB(i32 %9)
  %11 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %12 = call i32 @mss_lock(%struct.mss_info* %11)
  %13 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %14 = call i32 @ad_read(%struct.mss_info* %13, i32 11)
  store i32 10, i32* %6, align 4
  br label %15

15:                                               ; preds = %99, %1
  %16 = load i32, i32* %6, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %20 = load i32, i32* @MSS_STATUS, align 4
  %21 = call i32 @io_rd(%struct.mss_info* %19, i32 %20)
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %18, %15
  %25 = phi i1 [ false, %15 ], [ %23, %18 ]
  br i1 %25, label %26, label %102

26:                                               ; preds = %24
  %27 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %28 = call i64 @FULL_DUPLEX(%struct.mss_info* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %32 = call i32 @ad_read(%struct.mss_info* %31, i32 24)
  br label %34

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi i32 [ %32, %30 ], [ 48, %33 ]
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %41 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @sndbuf_runsz(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %34
  %47 = load i32, i32* %4, align 4
  %48 = and i32 %47, 16
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, 16
  store i32 %52, i32* %5, align 4
  %53 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %54 = call i32 @mss_unlock(%struct.mss_info* %53)
  %55 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %56 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @chn_intr(i32 %58)
  %60 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %61 = call i32 @mss_lock(%struct.mss_info* %60)
  br label %62

62:                                               ; preds = %50, %46, %34
  %63 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %64 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @sndbuf_runsz(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %62
  %70 = load i32, i32* %4, align 4
  %71 = and i32 %70, 32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = load i32, i32* %5, align 4
  %75 = or i32 %74, 32
  store i32 %75, i32* %5, align 4
  %76 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %77 = call i32 @mss_unlock(%struct.mss_info* %76)
  %78 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %79 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @chn_intr(i32 %81)
  %83 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %84 = call i32 @mss_lock(%struct.mss_info* %83)
  br label %85

85:                                               ; preds = %73, %69, %62
  %86 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %87 = call i64 @FULL_DUPLEX(%struct.mss_info* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %91 = load i32, i32* %4, align 4
  %92 = xor i32 %91, -1
  %93 = call i32 @ad_write(%struct.mss_info* %90, i32 24, i32 %92)
  br label %98

94:                                               ; preds = %85
  %95 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %96 = load i32, i32* @MSS_STATUS, align 4
  %97 = call i32 @io_wr(%struct.mss_info* %95, i32 %96, i32 0)
  br label %98

98:                                               ; preds = %94, %89
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %6, align 4
  br label %15

102:                                              ; preds = %24
  %103 = load i32, i32* %6, align 4
  %104 = icmp eq i32 %103, 10
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %107 = call i32 @BVDDB(i32 %106)
  br label %119

108:                                              ; preds = %102
  %109 = load i32, i32* %5, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  %112 = load i32, i32* %4, align 4
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  %114 = call i32 @BVDDB(i32 %113)
  %115 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %116 = load i32, i32* @MSS_STATUS, align 4
  %117 = call i32 @io_wr(%struct.mss_info* %115, i32 %116, i32 0)
  br label %118

118:                                              ; preds = %111, %108
  br label %119

119:                                              ; preds = %118, %105
  %120 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %121 = call i32 @mss_unlock(%struct.mss_info* %120)
  ret void
}

declare dso_local i32 @DEB(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @mss_lock(%struct.mss_info*) #1

declare dso_local i32 @ad_read(%struct.mss_info*, i32) #1

declare dso_local i32 @io_rd(%struct.mss_info*, i32) #1

declare dso_local i64 @FULL_DUPLEX(%struct.mss_info*) #1

declare dso_local i64 @sndbuf_runsz(i32) #1

declare dso_local i32 @mss_unlock(%struct.mss_info*) #1

declare dso_local i32 @chn_intr(i32) #1

declare dso_local i32 @ad_write(%struct.mss_info*, i32, i32) #1

declare dso_local i32 @io_wr(%struct.mss_info*, i32, i32) #1

declare dso_local i32 @BVDDB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
