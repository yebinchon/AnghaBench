; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_gnum4.c_addtoincludepath.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_gnum4.c_addtoincludepath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path_entry = type { %struct.path_entry* }

@last = common dso_local global %struct.path_entry* null, align 8
@first = common dso_local global %struct.path_entry* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addtoincludepath(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.path_entry*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call %struct.path_entry* @new_path_entry(i8* %4)
  store %struct.path_entry* %5, %struct.path_entry** %3, align 8
  %6 = load %struct.path_entry*, %struct.path_entry** @last, align 8
  %7 = icmp ne %struct.path_entry* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.path_entry*, %struct.path_entry** %3, align 8
  %10 = load %struct.path_entry*, %struct.path_entry** @last, align 8
  %11 = getelementptr inbounds %struct.path_entry, %struct.path_entry* %10, i32 0, i32 0
  store %struct.path_entry* %9, %struct.path_entry** %11, align 8
  %12 = load %struct.path_entry*, %struct.path_entry** %3, align 8
  store %struct.path_entry* %12, %struct.path_entry** @last, align 8
  br label %15

13:                                               ; preds = %1
  %14 = load %struct.path_entry*, %struct.path_entry** %3, align 8
  store %struct.path_entry* %14, %struct.path_entry** @first, align 8
  store %struct.path_entry* %14, %struct.path_entry** @last, align 8
  br label %15

15:                                               ; preds = %13, %8
  ret void
}

declare dso_local %struct.path_entry* @new_path_entry(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
