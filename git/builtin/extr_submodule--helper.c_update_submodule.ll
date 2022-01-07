; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_update_submodule.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_update_submodule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.update_clone_data = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8* }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"dummy %s %d\09%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.update_clone_data*)* @update_submodule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_submodule(%struct.update_clone_data* %0) #0 {
  %2 = alloca %struct.update_clone_data*, align 8
  store %struct.update_clone_data* %0, %struct.update_clone_data** %2, align 8
  %3 = load i32, i32* @stdout, align 4
  %4 = load %struct.update_clone_data*, %struct.update_clone_data** %2, align 8
  %5 = getelementptr inbounds %struct.update_clone_data, %struct.update_clone_data* %4, i32 0, i32 2
  %6 = call i8* @oid_to_hex(i32* %5)
  %7 = load %struct.update_clone_data*, %struct.update_clone_data** %2, align 8
  %8 = getelementptr inbounds %struct.update_clone_data, %struct.update_clone_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.update_clone_data*, %struct.update_clone_data** %2, align 8
  %11 = getelementptr inbounds %struct.update_clone_data, %struct.update_clone_data* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @fprintf(i32 %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %6, i32 %9, i8* %14)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i8*) #1

declare dso_local i8* @oid_to_hex(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
