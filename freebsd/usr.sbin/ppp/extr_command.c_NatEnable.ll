; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_NatEnable.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_NatEnable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, i32, %struct.TYPE_8__*, i32* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@ST_OPENED = common dso_local global i64 0, align 8
@la = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@OPT_IFACEALIAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdargs*)* @NatEnable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NatEnable(%struct.cmdargs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmdargs*, align 8
  store %struct.cmdargs* %0, %struct.cmdargs** %3, align 8
  %4 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %5 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %8 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1
  %11 = icmp eq i32 %6, %10
  br i1 %11, label %12, label %82

12:                                               ; preds = %1
  %13 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %14 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %17 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %15, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @strcasecmp(i32 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %58

24:                                               ; preds = %12
  %25 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %26 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %25, i32 0, i32 2
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %57, label %31

31:                                               ; preds = %24
  %32 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %33 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %32, i32 0, i32 2
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ST_OPENED, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %31
  %43 = load i32, i32* @la, align 4
  %44 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %45 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %44, i32 0, i32 2
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @LibAliasSetAddress(i32 %43, i32 %50)
  br label %52

52:                                               ; preds = %42, %31
  %53 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %54 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %53, i32 0, i32 2
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  br label %57

57:                                               ; preds = %52, %24
  store i32 0, i32* %2, align 4
  br label %83

58:                                               ; preds = %12
  %59 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %60 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %63 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @strcasecmp(i32 %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %58
  %71 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %72 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %71, i32 0, i32 2
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i32 0, i32* %74, align 8
  %75 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %76 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %75, i32 0, i32 2
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = load i32, i32* @OPT_IFACEALIAS, align 4
  %79 = call i32 @opt_disable(%struct.TYPE_8__* %77, i32 %78)
  store i32 0, i32* %2, align 4
  br label %83

80:                                               ; preds = %58
  br label %81

81:                                               ; preds = %80
  br label %82

82:                                               ; preds = %81, %1
  store i32 -1, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %70, %57
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i64 @strcasecmp(i32, i8*) #1

declare dso_local i32 @LibAliasSetAddress(i32, i32) #1

declare dso_local i32 @opt_disable(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
