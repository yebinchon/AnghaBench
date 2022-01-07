; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_IfaceDeleteCommand.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_IfaceDeleteCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, i32, i64, %struct.TYPE_11__*, %struct.TYPE_10__*, i32* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.ncpaddr = type { i32 }
%struct.in_addr = type { i64 }

@ST_OPENED = common dso_local global i64 0, align 8
@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%s: Cannot remove active interface address\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"%s: No such interface address\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdargs*)* @IfaceDeleteCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IfaceDeleteCommand(%struct.cmdargs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmdargs*, align 8
  %4 = alloca %struct.ncpaddr, align 4
  %5 = alloca %struct.in_addr, align 8
  %6 = alloca i32, align 4
  store %struct.cmdargs* %0, %struct.cmdargs** %3, align 8
  %7 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %8 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %11 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  %14 = icmp ne i32 %9, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %102

16:                                               ; preds = %1
  %17 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %18 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %17, i32 0, i32 5
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %21 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %19, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ncpaddr_aton(%struct.ncpaddr* %4, i32* null, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %16
  store i32 -1, i32* %2, align 4
  br label %102

29:                                               ; preds = %16
  %30 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %31 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %30, i32 0, i32 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ST_OPENED, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %29
  %41 = call i64 @ncpaddr_getip4(%struct.ncpaddr* %4, %struct.in_addr* %5)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %40
  %44 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %45 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %44, i32 0, i32 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %51, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %43
  %56 = load i32, i32* @LogWARN, align 4
  %57 = call i32 @ncpaddr_ntoa(%struct.ncpaddr* %4)
  %58 = call i32 @log_Printf(i32 %56, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %57)
  store i32 1, i32* %2, align 4
  br label %102

59:                                               ; preds = %43, %40, %29
  %60 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %61 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %60, i32 0, i32 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %66 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %65, i32 0, i32 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = call i32 @iface_Delete(i32 %64, %struct.TYPE_12__* %68, %struct.ncpaddr* %4)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %97, label %72

72:                                               ; preds = %59
  %73 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %74 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %73, i32 0, i32 3
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  store i32 1, i32* %6, align 4
  br label %96

80:                                               ; preds = %72
  %81 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %82 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %87 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @ncpaddr_ntoa(%struct.ncpaddr* %4)
  %90 = call i32 @prompt_Printf(i64 %88, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  br label %95

91:                                               ; preds = %80
  %92 = load i32, i32* @LogWARN, align 4
  %93 = call i32 @ncpaddr_ntoa(%struct.ncpaddr* %4)
  %94 = call i32 @log_Printf(i32 %92, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %91, %85
  br label %96

96:                                               ; preds = %95, %79
  br label %97

97:                                               ; preds = %96, %59
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %97, %55, %28, %15
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @ncpaddr_aton(%struct.ncpaddr*, i32*, i32) #1

declare dso_local i64 @ncpaddr_getip4(%struct.ncpaddr*, %struct.in_addr*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

declare dso_local i32 @ncpaddr_ntoa(%struct.ncpaddr*) #1

declare dso_local i32 @iface_Delete(i32, %struct.TYPE_12__*, %struct.ncpaddr*) #1

declare dso_local i32 @prompt_Printf(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
