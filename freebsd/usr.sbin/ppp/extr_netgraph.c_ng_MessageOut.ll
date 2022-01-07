; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_netgraph.c_ng_MessageOut.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_netgraph.c_ng_MessageOut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngdevice = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@NG_PATHSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@LogWARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: %.*s: Node path too long\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"%s: alloca(%d) failure... %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@LogDEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"%s: NgSendAsciiMsg (to %s): \22%s\22, \22%s\22: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ngdevice*, i8*)* @ng_MessageOut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_MessageOut(%struct.ngdevice* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ngdevice*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ngdevice* %0, %struct.ngdevice** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i32, i32* @NG_PATHSIZ, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @strspn(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %19 = load i8*, i8** %5, align 8
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  store i8* %21, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @strcspn(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp uge i64 %24, %14
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load i32, i32* @LogWARN, align 4
  %28 = load %struct.ngdevice*, %struct.ngdevice** %4, align 8
  %29 = getelementptr inbounds %struct.ngdevice, %struct.ngdevice* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %9, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %31, i64 %32, i8* %33)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %153

35:                                               ; preds = %2
  %36 = load i8*, i8** %5, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @memcpy(i8* %16, i8* %36, i64 %37)
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds i8, i8* %16, i64 %39
  store i8 0, i8* %40, align 1
  %41 = load i64, i64* %9, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 %41
  store i8* %43, i8** %5, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @strspn(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %46 = load i8*, i8** %5, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %5, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = call i64 @strcspn(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %9, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %68, %35
  %54 = load i32, i32* %10, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %53
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 37
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i64, i64* %9, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %9, align 8
  br label %67

67:                                               ; preds = %64, %56
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %10, align 4
  br label %53

71:                                               ; preds = %53
  %72 = load i64, i64* %9, align 8
  %73 = add i64 %72, 4
  %74 = call i8* @alloca(i64 %73)
  store i8* %74, i8** %8, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %87

76:                                               ; preds = %71
  %77 = load i32, i32* @LogWARN, align 4
  %78 = load %struct.ngdevice*, %struct.ngdevice** %4, align 8
  %79 = getelementptr inbounds %struct.ngdevice, %struct.ngdevice* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* %9, align 8
  %83 = add i64 %82, 4
  %84 = load i32, i32* @errno, align 4
  %85 = call i32 @strerror(i32 %84)
  %86 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %77, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %81, i64 %83, i32 %85)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %153

87:                                               ; preds = %71
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %88

88:                                               ; preds = %107, %87
  %89 = load i32, i32* %10, align 4
  %90 = load i64, i64* %9, align 8
  %91 = trunc i64 %90 to i32
  %92 = icmp slt i32 %89, %91
  br i1 %92, label %93, label %119

93:                                               ; preds = %88
  %94 = load i8*, i8** %5, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 37
  br i1 %100, label %101, label %107

101:                                              ; preds = %93
  %102 = load i8*, i8** %8, align 8
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i8, i8* %102, i64 %105
  store i8 37, i8* %106, align 1
  br label %107

107:                                              ; preds = %101, %93
  %108 = load i8*, i8** %5, align 8
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %11, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i8, i8* %108, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = load i8*, i8** %8, align 8
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i8, i8* %114, i64 %117
  store i8 %113, i8* %118, align 1
  br label %88

119:                                              ; preds = %88
  %120 = load i8*, i8** %8, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  %124 = call i32 @strcpy(i8* %123, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %125 = load i32, i32* %11, align 4
  %126 = load i8*, i8** %5, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  store i8* %128, i8** %5, align 8
  %129 = load i8*, i8** %5, align 8
  %130 = call i32 @strspn(i8* %129, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %131 = load i8*, i8** %5, align 8
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i8, i8* %131, i64 %132
  store i8* %133, i8** %5, align 8
  %134 = load %struct.ngdevice*, %struct.ngdevice** %4, align 8
  %135 = getelementptr inbounds %struct.ngdevice, %struct.ngdevice* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i8*, i8** %8, align 8
  %138 = load i8*, i8** %5, align 8
  %139 = call i64 @NgSendAsciiMsg(i32 %136, i8* %16, i8* %137, i8* %138)
  %140 = icmp slt i64 %139, 0
  br i1 %140, label %141, label %152

141:                                              ; preds = %119
  %142 = load i32, i32* @LogDEBUG, align 4
  %143 = load %struct.ngdevice*, %struct.ngdevice** %4, align 8
  %144 = getelementptr inbounds %struct.ngdevice, %struct.ngdevice* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i8*, i8** %8, align 8
  %148 = load i8*, i8** %5, align 8
  %149 = load i32, i32* @errno, align 4
  %150 = call i32 @strerror(i32 %149)
  %151 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %142, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %146, i8* %16, i8* %147, i8* %148, i32 %150)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %153

152:                                              ; preds = %119
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %153

153:                                              ; preds = %152, %141, %76, %26
  %154 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %154)
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strspn(i8*, i8*) #2

declare dso_local i64 @strcspn(i8*, i8*) #2

declare dso_local i32 @log_Printf(i32, i8*, i32, ...) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i8* @alloca(i64) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i64 @NgSendAsciiMsg(i32, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
