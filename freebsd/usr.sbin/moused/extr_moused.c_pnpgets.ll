; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/moused/extr_moused.c_pnpgets.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/moused/extr_moused.c_pnpgets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.timeval = type { i32, i64 }

@TIOCM_DTR = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@rodent = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TIOCMBIS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"begin-id %02x\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%c %02x\00", align 1
@FD_SETSIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"len:%d, '%-*.*s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @pnpgets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnpgets(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  %9 = call i32 (...) @pnpwakeup1()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %1
  %12 = call i32 (...) @pnpwakeup2()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* @TIOCM_DTR, align 4
  %16 = load i32, i32* @TIOCM_RTS, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 0), align 4
  %19 = load i32, i32* @TIOCMBIS, align 4
  %20 = call i32 @ioctl(i32 %18, i32 %19, i32* %7)
  store i32 0, i32* %2, align 4
  br label %134

21:                                               ; preds = %11, %1
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %22 = call i32 @usleep(i32 240000)
  br label %23

23:                                               ; preds = %56, %21
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 0), align 4
  %25 = call i32 @read(i32 %24, i8* %8, i32 1)
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %57

27:                                               ; preds = %23
  %28 = load i8, i8* %8, align 1
  %29 = load i8*, i8** %3, align 8
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  store i8 %28, i8* %33, align 1
  %34 = load i8, i8* %8, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 8
  br i1 %36, label %41, label %37

37:                                               ; preds = %27
  %38 = load i8, i8* %8, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 40
  br i1 %40, label %41, label %47

41:                                               ; preds = %37, %27
  %42 = load i8, i8* %8, align 1
  %43 = sext i8 %42 to i32
  %44 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %57

47:                                               ; preds = %37
  %48 = load i8, i8* %8, align 1
  %49 = sext i8 %48 to i32
  %50 = load i8, i8* %8, align 1
  %51 = sext i8 %50 to i32
  %52 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = icmp sge i32 %53, 256
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %57

56:                                               ; preds = %47
  br label %23

57:                                               ; preds = %55, %41, %23
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %131

61:                                               ; preds = %57
  %62 = load i8, i8* %8, align 1
  %63 = add i8 %62, 1
  store i8 %63, i8* %8, align 1
  br label %64

64:                                               ; preds = %96, %61
  %65 = call i32 @FD_ZERO(i32* %5)
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 0), align 4
  %67 = call i32 @FD_SET(i32 %66, i32* %5)
  %68 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1
  store i64 0, i64* %68, align 8
  %69 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  store i32 240000, i32* %69, align 8
  %70 = load i32, i32* @FD_SETSIZE, align 4
  %71 = call i64 @select(i32 %70, i32* %5, i32* null, i32* null, %struct.timeval* %4)
  %72 = icmp sle i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %97

74:                                               ; preds = %64
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 0), align 4
  %76 = load i8*, i8** %3, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = call i32 @read(i32 %75, i8* %79, i32 1)
  %81 = load i8*, i8** %3, align 8
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = load i8, i8* %8, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %74
  br label %97

92:                                               ; preds = %74
  %93 = load i32, i32* %7, align 4
  %94 = icmp sge i32 %93, 256
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %97

96:                                               ; preds = %92
  br label %64

97:                                               ; preds = %95, %91, %73
  %98 = load i32, i32* %6, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %97
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %7, align 4
  %103 = sub nsw i32 %102, %101
  store i32 %103, i32* %7, align 4
  %104 = load i8*, i8** %3, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8*, i8** %3, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @bcopy(i8* %107, i8* %109, i32 %110)
  br label %112

112:                                              ; preds = %100, %97
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load i8*, i8** %3, align 8
  %117 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %113, i32 %114, i32 %115, i8* %116)
  %118 = load i8*, i8** %3, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sub nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %118, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = load i8, i8* %8, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %124, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %112
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %2, align 4
  br label %134

130:                                              ; preds = %112
  br label %131

131:                                              ; preds = %130, %60
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @MAX(i32 %132, i32 0)
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %131, %128, %14
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @pnpwakeup1(...) #1

declare dso_local i32 @pnpwakeup2(...) #1

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @debug(i8*, i32, ...) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i64 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
