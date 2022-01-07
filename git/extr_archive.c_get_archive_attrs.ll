; ModuleID = '/home/carl/AnghaBench/git/extr_archive.c_get_archive_attrs.c'
source_filename = "/home/carl/AnghaBench/git/extr_archive.c_get_archive_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr_check = type opaque
%struct.index_state = type { i32 }

@get_archive_attrs.check = internal global %struct.attr_check* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"export-ignore\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"export-subst\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.attr_check* (%struct.index_state*, i8*)* @get_archive_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.attr_check* @get_archive_attrs(%struct.index_state* %0, i8* %1) #0 {
  %3 = alloca %struct.index_state*, align 8
  %4 = alloca i8*, align 8
  store %struct.index_state* %0, %struct.index_state** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.attr_check*, %struct.attr_check** @get_archive_attrs.check, align 8
  %6 = icmp ne %struct.attr_check* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = call %struct.attr_check* @attr_check_initl(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store %struct.attr_check* %8, %struct.attr_check** @get_archive_attrs.check, align 8
  br label %9

9:                                                ; preds = %7, %2
  %10 = load %struct.index_state*, %struct.index_state** %3, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load %struct.attr_check*, %struct.attr_check** @get_archive_attrs.check, align 8
  %13 = call i32 @git_check_attr(%struct.index_state* %10, i8* %11, %struct.attr_check* %12)
  %14 = load %struct.attr_check*, %struct.attr_check** @get_archive_attrs.check, align 8
  ret %struct.attr_check* %14
}

declare dso_local %struct.attr_check* @attr_check_initl(i8*, i8*, i32*) #1

declare dso_local i32 @git_check_attr(%struct.index_state*, i8*, %struct.attr_check*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
