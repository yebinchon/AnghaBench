; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_IfaceClearCommand.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_IfaceClearCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, i32, %struct.TYPE_9__*, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_10__, i32, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"inet\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"inet6\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@ST_OPENED = common dso_local global i64 0, align 8
@PHYS_AUTO = common dso_local global i32 0, align 4
@IFACE_CLEAR_ALIASES = common dso_local global i32 0, align 4
@IFACE_CLEAR_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdargs*)* @IfaceClearCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IfaceClearCommand(%struct.cmdargs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmdargs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cmdargs* %0, %struct.cmdargs** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %7 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %10 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  %13 = icmp eq i32 %8, %12
  br i1 %13, label %14, label %45

14:                                               ; preds = %1
  %15 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %16 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %19 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %17, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @strcasecmp(i32 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %14
  %27 = load i32, i32* @AF_INET, align 4
  store i32 %27, i32* %4, align 4
  br label %44

28:                                               ; preds = %14
  %29 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %30 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %33 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @strcasecmp(i32 %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i32, i32* @AF_INET6, align 4
  store i32 %41, i32* %4, align 4
  br label %43

42:                                               ; preds = %28
  store i32 -1, i32* %2, align 4
  br label %94

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %43, %26
  br label %55

45:                                               ; preds = %1
  %46 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %47 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %50 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i32 -1, i32* %2, align 4
  br label %94

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %44
  %56 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %57 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %56, i32 0, i32 2
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ST_OPENED, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %76, label %66

66:                                               ; preds = %55
  %67 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %68 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %67, i32 0, i32 2
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @PHYS_AUTO, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %66, %55
  %77 = load i32, i32* @IFACE_CLEAR_ALIASES, align 4
  br label %80

78:                                               ; preds = %66
  %79 = load i32, i32* @IFACE_CLEAR_ALL, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ %77, %76 ], [ %79, %78 ]
  store i32 %81, i32* %5, align 4
  %82 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %83 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %82, i32 0, i32 2
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %88 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %87, i32 0, i32 2
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @iface_Clear(i32 %86, %struct.TYPE_10__* %90, i32 %91, i32 %92)
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %80, %53, %42
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i64 @strcasecmp(i32, i8*) #1

declare dso_local i32 @iface_Clear(i32, %struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
