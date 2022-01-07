; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_rebase.c_rebase_write_basic_state.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_rebase.c_rebase_write_basic_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rebase_options = type { i8*, i32, i64, i64, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"head-name\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"detached HEAD\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"onto\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"orig-head\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@REBASE_NO_QUIET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@REBASE_VERBOSE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"strategy\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"strategy_opts\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"allow_rerere_autoupdate\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"-%s-rerere-autoupdate\00", align 1
@RERERE_AUTOUPDATE = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [4 x i8] c"-no\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"gpg_sign_opt\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"--signoff\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rebase_options*)* @rebase_write_basic_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rebase_write_basic_state(%struct.rebase_options* %0) #0 {
  %2 = alloca %struct.rebase_options*, align 8
  store %struct.rebase_options* %0, %struct.rebase_options** %2, align 8
  %3 = load %struct.rebase_options*, %struct.rebase_options** %2, align 8
  %4 = call i32 @state_dir_path(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.rebase_options* %3)
  %5 = load %struct.rebase_options*, %struct.rebase_options** %2, align 8
  %6 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.rebase_options*, %struct.rebase_options** %2, align 8
  %11 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %9
  %15 = phi i8* [ %12, %9 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), %13 ]
  %16 = call i32 (i32, i8*, ...) @write_file(i32 %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  %17 = load %struct.rebase_options*, %struct.rebase_options** %2, align 8
  %18 = call i32 @state_dir_path(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %struct.rebase_options* %17)
  %19 = load %struct.rebase_options*, %struct.rebase_options** %2, align 8
  %20 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %19, i32 0, i32 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %14
  %24 = load %struct.rebase_options*, %struct.rebase_options** %2, align 8
  %25 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %24, i32 0, i32 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i8* @oid_to_hex(i32* %28)
  br label %31

30:                                               ; preds = %14
  br label %31

31:                                               ; preds = %30, %23
  %32 = phi i8* [ %29, %23 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %30 ]
  %33 = call i32 (i32, i8*, ...) @write_file(i32 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = load %struct.rebase_options*, %struct.rebase_options** %2, align 8
  %35 = call i32 @state_dir_path(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), %struct.rebase_options* %34)
  %36 = load %struct.rebase_options*, %struct.rebase_options** %2, align 8
  %37 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %36, i32 0, i32 7
  %38 = call i8* @oid_to_hex(i32* %37)
  %39 = call i32 (i32, i8*, ...) @write_file(i32 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  %40 = load %struct.rebase_options*, %struct.rebase_options** %2, align 8
  %41 = call i32 @state_dir_path(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), %struct.rebase_options* %40)
  %42 = load %struct.rebase_options*, %struct.rebase_options** %2, align 8
  %43 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @REBASE_NO_QUIET, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)
  %50 = call i32 (i32, i8*, ...) @write_file(i32 %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  %51 = load %struct.rebase_options*, %struct.rebase_options** %2, align 8
  %52 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @REBASE_VERBOSE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %31
  %58 = load %struct.rebase_options*, %struct.rebase_options** %2, align 8
  %59 = call i32 @state_dir_path(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), %struct.rebase_options* %58)
  %60 = call i32 (i32, i8*, ...) @write_file(i32 %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  br label %61

61:                                               ; preds = %57, %31
  %62 = load %struct.rebase_options*, %struct.rebase_options** %2, align 8
  %63 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.rebase_options*, %struct.rebase_options** %2, align 8
  %68 = call i32 @state_dir_path(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), %struct.rebase_options* %67)
  %69 = load %struct.rebase_options*, %struct.rebase_options** %2, align 8
  %70 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i32, i8*, ...) @write_file(i32 %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %66, %61
  %74 = load %struct.rebase_options*, %struct.rebase_options** %2, align 8
  %75 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load %struct.rebase_options*, %struct.rebase_options** %2, align 8
  %80 = call i32 @state_dir_path(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), %struct.rebase_options* %79)
  %81 = load %struct.rebase_options*, %struct.rebase_options** %2, align 8
  %82 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i32, i8*, ...) @write_file(i32 %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %78, %73
  %86 = load %struct.rebase_options*, %struct.rebase_options** %2, align 8
  %87 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %85
  %91 = load %struct.rebase_options*, %struct.rebase_options** %2, align 8
  %92 = call i32 @state_dir_path(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), %struct.rebase_options* %91)
  %93 = load %struct.rebase_options*, %struct.rebase_options** %2, align 8
  %94 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @RERERE_AUTOUPDATE, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0)
  %100 = call i32 (i32, i8*, ...) @write_file(i32 %92, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i8* %99)
  br label %101

101:                                              ; preds = %90, %85
  %102 = load %struct.rebase_options*, %struct.rebase_options** %2, align 8
  %103 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load %struct.rebase_options*, %struct.rebase_options** %2, align 8
  %108 = call i32 @state_dir_path(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), %struct.rebase_options* %107)
  %109 = load %struct.rebase_options*, %struct.rebase_options** %2, align 8
  %110 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (i32, i8*, ...) @write_file(i32 %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %106, %101
  %114 = load %struct.rebase_options*, %struct.rebase_options** %2, align 8
  %115 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load %struct.rebase_options*, %struct.rebase_options** %2, align 8
  %120 = call i32 @state_dir_path(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), %struct.rebase_options* %119)
  %121 = call i32 (i32, i8*, ...) @write_file(i32 %120, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  br label %122

122:                                              ; preds = %118, %113
  ret i32 0
}

declare dso_local i32 @write_file(i32, i8*, ...) #1

declare dso_local i32 @state_dir_path(i8*, %struct.rebase_options*) #1

declare dso_local i8* @oid_to_hex(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
