; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_check_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_check_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirlist = type { i64 }

@v4root_phase = common dso_local global i64 0, align 8
@opt_flags = common dso_local global i32 0, align 4
@OP_MAPROOT = common dso_local global i32 0, align 4
@OP_MAPALL = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"-mapall and -maproot mutually exclusive\00", align 1
@OP_MASK = common dso_local global i32 0, align 4
@OP_NET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"-mask requires -network\00", align 1
@OP_HAVEMASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"-network requires mask specification\00", align 1
@OP_MASKLEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"-mask and /masklen are mutually exclusive\00", align 1
@OP_SEC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"only -sec,-net,-mask options allowed on V4:\00", align 1
@OP_ALLDIRS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"-alldirs has multiple directories\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dirlist*)* @check_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_options(%struct.dirlist* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dirlist*, align 8
  store %struct.dirlist* %0, %struct.dirlist** %3, align 8
  %4 = load i64, i64* @v4root_phase, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load %struct.dirlist*, %struct.dirlist** %3, align 8
  %8 = icmp eq %struct.dirlist* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store i32 1, i32* %2, align 4
  br label %96

10:                                               ; preds = %6, %1
  %11 = load i32, i32* @opt_flags, align 4
  %12 = load i32, i32* @OP_MAPROOT, align 4
  %13 = load i32, i32* @OP_MAPALL, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = load i32, i32* @OP_MAPROOT, align 4
  %17 = load i32, i32* @OP_MAPALL, align 4
  %18 = or i32 %16, %17
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %10
  %21 = load i32, i32* @LOG_ERR, align 4
  %22 = call i32 @syslog(i32 %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %96

23:                                               ; preds = %10
  %24 = load i32, i32* @opt_flags, align 4
  %25 = load i32, i32* @OP_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load i32, i32* @opt_flags, align 4
  %30 = load i32, i32* @OP_NET, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @LOG_ERR, align 4
  %35 = call i32 @syslog(i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %96

36:                                               ; preds = %28, %23
  %37 = load i32, i32* @opt_flags, align 4
  %38 = load i32, i32* @OP_NET, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load i32, i32* @opt_flags, align 4
  %43 = load i32, i32* @OP_HAVEMASK, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @LOG_ERR, align 4
  %48 = call i32 @syslog(i32 %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %96

49:                                               ; preds = %41, %36
  %50 = load i32, i32* @opt_flags, align 4
  %51 = load i32, i32* @OP_MASK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load i32, i32* @opt_flags, align 4
  %56 = load i32, i32* @OP_MASKLEN, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @LOG_ERR, align 4
  %61 = call i32 @syslog(i32 %60, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %96

62:                                               ; preds = %54, %49
  %63 = load i64, i64* @v4root_phase, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %62
  %66 = load i32, i32* @opt_flags, align 4
  %67 = load i32, i32* @OP_SEC, align 4
  %68 = load i32, i32* @OP_MASK, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @OP_NET, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @OP_HAVEMASK, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @OP_MASKLEN, align 4
  %75 = or i32 %73, %74
  %76 = xor i32 %75, -1
  %77 = and i32 %66, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %65
  %80 = load i32, i32* @LOG_ERR, align 4
  %81 = call i32 @syslog(i32 %80, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %96

82:                                               ; preds = %65, %62
  %83 = load i32, i32* @opt_flags, align 4
  %84 = load i32, i32* @OP_ALLDIRS, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load %struct.dirlist*, %struct.dirlist** %3, align 8
  %89 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* @LOG_ERR, align 4
  %94 = call i32 @syslog(i32 %93, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %96

95:                                               ; preds = %87, %82
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %92, %79, %59, %46, %33, %20, %9
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @syslog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
