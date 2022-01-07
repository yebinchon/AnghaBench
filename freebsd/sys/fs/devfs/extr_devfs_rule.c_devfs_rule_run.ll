; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_rule.c_devfs_rule_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_rule.c_devfs_rule_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfs_krule = type { %struct.devfs_rule }
%struct.devfs_rule = type { i32, i32, i32, i32, i32, i32 }
%struct.devfs_mount = type { i32 }
%struct.devfs_dirent = type { i32, i32, i32, i32 }
%struct.devfs_ruleset = type { i32 }

@DRA_BACTS = common dso_local global i32 0, align 4
@DRB_HIDE = common dso_local global i32 0, align 4
@DE_WHITEOUT = common dso_local global i32 0, align 4
@DRB_UNHIDE = common dso_local global i32 0, align 4
@DRA_UID = common dso_local global i32 0, align 4
@DRA_GID = common dso_local global i32 0, align 4
@DRA_MODE = common dso_local global i32 0, align 4
@DRA_INCSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"DRA_INCSET but bad dr_incset\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.devfs_krule*, %struct.devfs_mount*, %struct.devfs_dirent*, i32)* @devfs_rule_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @devfs_rule_run(%struct.devfs_krule* %0, %struct.devfs_mount* %1, %struct.devfs_dirent* %2, i32 %3) #0 {
  %5 = alloca %struct.devfs_krule*, align 8
  %6 = alloca %struct.devfs_mount*, align 8
  %7 = alloca %struct.devfs_dirent*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.devfs_rule*, align 8
  %10 = alloca %struct.devfs_ruleset*, align 8
  store %struct.devfs_krule* %0, %struct.devfs_krule** %5, align 8
  store %struct.devfs_mount* %1, %struct.devfs_mount** %6, align 8
  store %struct.devfs_dirent* %2, %struct.devfs_dirent** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.devfs_krule*, %struct.devfs_krule** %5, align 8
  %12 = getelementptr inbounds %struct.devfs_krule, %struct.devfs_krule* %11, i32 0, i32 0
  store %struct.devfs_rule* %12, %struct.devfs_rule** %9, align 8
  %13 = load %struct.devfs_krule*, %struct.devfs_krule** %5, align 8
  %14 = load %struct.devfs_mount*, %struct.devfs_mount** %6, align 8
  %15 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %16 = call i32 @devfs_rule_match(%struct.devfs_krule* %13, %struct.devfs_mount* %14, %struct.devfs_dirent* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %120

19:                                               ; preds = %4
  %20 = load %struct.devfs_rule*, %struct.devfs_rule** %9, align 8
  %21 = getelementptr inbounds %struct.devfs_rule, %struct.devfs_rule* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DRA_BACTS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %19
  %27 = load %struct.devfs_rule*, %struct.devfs_rule** %9, align 8
  %28 = getelementptr inbounds %struct.devfs_rule, %struct.devfs_rule* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DRB_HIDE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load i32, i32* @DE_WHITEOUT, align 4
  %35 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %36 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %33, %26
  %40 = load %struct.devfs_rule*, %struct.devfs_rule** %9, align 8
  %41 = getelementptr inbounds %struct.devfs_rule, %struct.devfs_rule* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DRB_UNHIDE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load i32, i32* @DE_WHITEOUT, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %50 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %46, %39
  br label %54

54:                                               ; preds = %53, %19
  %55 = load %struct.devfs_rule*, %struct.devfs_rule** %9, align 8
  %56 = getelementptr inbounds %struct.devfs_rule, %struct.devfs_rule* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @DRA_UID, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load %struct.devfs_rule*, %struct.devfs_rule** %9, align 8
  %63 = getelementptr inbounds %struct.devfs_rule, %struct.devfs_rule* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %66 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %61, %54
  %68 = load %struct.devfs_rule*, %struct.devfs_rule** %9, align 8
  %69 = getelementptr inbounds %struct.devfs_rule, %struct.devfs_rule* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @DRA_GID, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load %struct.devfs_rule*, %struct.devfs_rule** %9, align 8
  %76 = getelementptr inbounds %struct.devfs_rule, %struct.devfs_rule* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %79 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %74, %67
  %81 = load %struct.devfs_rule*, %struct.devfs_rule** %9, align 8
  %82 = getelementptr inbounds %struct.devfs_rule, %struct.devfs_rule* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @DRA_MODE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = load %struct.devfs_rule*, %struct.devfs_rule** %9, align 8
  %89 = getelementptr inbounds %struct.devfs_rule, %struct.devfs_rule* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %92 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %87, %80
  %94 = load %struct.devfs_rule*, %struct.devfs_rule** %9, align 8
  %95 = getelementptr inbounds %struct.devfs_rule, %struct.devfs_rule* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @DRA_INCSET, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %120

100:                                              ; preds = %93
  %101 = load i32, i32* %8, align 4
  %102 = icmp ugt i32 %101, 0
  br i1 %102, label %103, label %119

103:                                              ; preds = %100
  %104 = load %struct.devfs_krule*, %struct.devfs_krule** %5, align 8
  %105 = getelementptr inbounds %struct.devfs_krule, %struct.devfs_krule* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.devfs_rule, %struct.devfs_rule* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call %struct.devfs_ruleset* @devfs_ruleset_bynum(i32 %107)
  store %struct.devfs_ruleset* %108, %struct.devfs_ruleset** %10, align 8
  %109 = load %struct.devfs_ruleset*, %struct.devfs_ruleset** %10, align 8
  %110 = icmp ne %struct.devfs_ruleset* %109, null
  %111 = zext i1 %110 to i32
  %112 = call i32 @KASSERT(i32 %111, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %113 = load %struct.devfs_ruleset*, %struct.devfs_ruleset** %10, align 8
  %114 = load %struct.devfs_mount*, %struct.devfs_mount** %6, align 8
  %115 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sub i32 %116, 1
  %118 = call i32 @devfs_ruleset_applyde(%struct.devfs_ruleset* %113, %struct.devfs_mount* %114, %struct.devfs_dirent* %115, i32 %117)
  br label %119

119:                                              ; preds = %103, %100
  br label %120

120:                                              ; preds = %18, %119, %93
  ret void
}

declare dso_local i32 @devfs_rule_match(%struct.devfs_krule*, %struct.devfs_mount*, %struct.devfs_dirent*) #1

declare dso_local %struct.devfs_ruleset* @devfs_ruleset_bynum(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @devfs_ruleset_applyde(%struct.devfs_ruleset*, %struct.devfs_mount*, %struct.devfs_dirent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
