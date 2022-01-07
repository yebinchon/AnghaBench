; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_lockf.c_lf_activate_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_lockf.c_lf_activate_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lockf = type { %struct.lockf_entry_list }
%struct.lockf_entry_list = type { i32 }
%struct.lockf_entry = type { i64, i32, i32 }

@lf_link = common dso_local global i32 0, align 4
@SELF = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i64 0, align 8
@lockf_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lockf*, %struct.lockf_entry*)* @lf_activate_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lf_activate_lock(%struct.lockf* %0, %struct.lockf_entry* %1) #0 {
  %3 = alloca %struct.lockf*, align 8
  %4 = alloca %struct.lockf_entry*, align 8
  %5 = alloca %struct.lockf_entry*, align 8
  %6 = alloca %struct.lockf_entry*, align 8
  %7 = alloca %struct.lockf_entry_list, align 4
  %8 = alloca i32, align 4
  store %struct.lockf* %0, %struct.lockf** %3, align 8
  store %struct.lockf_entry* %1, %struct.lockf_entry** %4, align 8
  %9 = call i32 @LIST_INIT(%struct.lockf_entry_list* %7)
  %10 = load %struct.lockf_entry*, %struct.lockf_entry** %4, align 8
  %11 = load i32, i32* @lf_link, align 4
  %12 = call i32 @LIST_INSERT_HEAD(%struct.lockf_entry_list* %7, %struct.lockf_entry* %10, i32 %11)
  br label %13

13:                                               ; preds = %90, %2
  %14 = call i32 @LIST_EMPTY(%struct.lockf_entry_list* %7)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %91

17:                                               ; preds = %13
  %18 = call %struct.lockf_entry* @LIST_FIRST(%struct.lockf_entry_list* %7)
  store %struct.lockf_entry* %18, %struct.lockf_entry** %4, align 8
  %19 = load %struct.lockf_entry*, %struct.lockf_entry** %4, align 8
  %20 = load i32, i32* @lf_link, align 4
  %21 = call i32 @LIST_REMOVE(%struct.lockf_entry* %19, i32 %20)
  %22 = load %struct.lockf*, %struct.lockf** %3, align 8
  %23 = getelementptr inbounds %struct.lockf, %struct.lockf* %22, i32 0, i32 0
  %24 = call %struct.lockf_entry* @LIST_FIRST(%struct.lockf_entry_list* %23)
  store %struct.lockf_entry* %24, %struct.lockf_entry** %5, align 8
  br label %25

25:                                               ; preds = %60, %46, %17
  %26 = load %struct.lockf_entry*, %struct.lockf_entry** %4, align 8
  %27 = load i32, i32* @SELF, align 4
  %28 = call i32 @lf_findoverlap(%struct.lockf_entry** %5, %struct.lockf_entry* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  switch i32 %29, label %79 [
    i32 0, label %30
    i32 1, label %31
    i32 2, label %41
    i32 3, label %46
    i32 4, label %60
    i32 5, label %71
  ]

30:                                               ; preds = %25
  br label %79

31:                                               ; preds = %25
  %32 = load %struct.lockf_entry*, %struct.lockf_entry** %5, align 8
  %33 = load i32, i32* @lf_link, align 4
  %34 = call i32 @LIST_REMOVE(%struct.lockf_entry* %32, i32 %33)
  %35 = load %struct.lockf*, %struct.lockf** %3, align 8
  %36 = load %struct.lockf_entry*, %struct.lockf_entry** %5, align 8
  %37 = load i32, i32* @TRUE, align 4
  %38 = call i32 @lf_update_dependancies(%struct.lockf* %35, %struct.lockf_entry* %36, i32 %37, %struct.lockf_entry_list* %7)
  %39 = load %struct.lockf_entry*, %struct.lockf_entry** %5, align 8
  %40 = call i32 @lf_free_lock(%struct.lockf_entry* %39)
  br label %79

41:                                               ; preds = %25
  %42 = load %struct.lockf*, %struct.lockf** %3, align 8
  %43 = load %struct.lockf_entry*, %struct.lockf_entry** %5, align 8
  %44 = load %struct.lockf_entry*, %struct.lockf_entry** %4, align 8
  %45 = call i32 @lf_split(%struct.lockf* %42, %struct.lockf_entry* %43, %struct.lockf_entry* %44, %struct.lockf_entry_list* %7)
  br label %79

46:                                               ; preds = %25
  %47 = load %struct.lockf_entry*, %struct.lockf_entry** %5, align 8
  %48 = load i32, i32* @lf_link, align 4
  %49 = call %struct.lockf_entry* @LIST_NEXT(%struct.lockf_entry* %47, i32 %48)
  store %struct.lockf_entry* %49, %struct.lockf_entry** %6, align 8
  %50 = load %struct.lockf_entry*, %struct.lockf_entry** %5, align 8
  %51 = load i32, i32* @lf_link, align 4
  %52 = call i32 @LIST_REMOVE(%struct.lockf_entry* %50, i32 %51)
  %53 = load %struct.lockf*, %struct.lockf** %3, align 8
  %54 = load %struct.lockf_entry*, %struct.lockf_entry** %5, align 8
  %55 = load i32, i32* @TRUE, align 4
  %56 = call i32 @lf_update_dependancies(%struct.lockf* %53, %struct.lockf_entry* %54, i32 %55, %struct.lockf_entry_list* %7)
  %57 = load %struct.lockf_entry*, %struct.lockf_entry** %5, align 8
  %58 = call i32 @lf_free_lock(%struct.lockf_entry* %57)
  %59 = load %struct.lockf_entry*, %struct.lockf_entry** %6, align 8
  store %struct.lockf_entry* %59, %struct.lockf_entry** %5, align 8
  br label %25

60:                                               ; preds = %25
  %61 = load %struct.lockf*, %struct.lockf** %3, align 8
  %62 = load %struct.lockf_entry*, %struct.lockf_entry** %5, align 8
  %63 = load %struct.lockf_entry*, %struct.lockf_entry** %4, align 8
  %64 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, 1
  %67 = call i32 @lf_set_end(%struct.lockf* %61, %struct.lockf_entry* %62, i32 %66, %struct.lockf_entry_list* %7)
  %68 = load %struct.lockf_entry*, %struct.lockf_entry** %5, align 8
  %69 = load i32, i32* @lf_link, align 4
  %70 = call %struct.lockf_entry* @LIST_NEXT(%struct.lockf_entry* %68, i32 %69)
  store %struct.lockf_entry* %70, %struct.lockf_entry** %5, align 8
  br label %25

71:                                               ; preds = %25
  %72 = load %struct.lockf*, %struct.lockf** %3, align 8
  %73 = load %struct.lockf_entry*, %struct.lockf_entry** %5, align 8
  %74 = load %struct.lockf_entry*, %struct.lockf_entry** %4, align 8
  %75 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  %78 = call i32 @lf_set_start(%struct.lockf* %72, %struct.lockf_entry* %73, i32 %77, %struct.lockf_entry_list* %7)
  br label %79

79:                                               ; preds = %25, %71, %41, %31, %30
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.lockf_entry*, %struct.lockf_entry** %4, align 8
  %82 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @F_UNLCK, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load %struct.lockf*, %struct.lockf** %3, align 8
  %88 = load %struct.lockf_entry*, %struct.lockf_entry** %4, align 8
  %89 = call i32 @lf_insert_lock(%struct.lockf* %87, %struct.lockf_entry* %88)
  br label %90

90:                                               ; preds = %86, %80
  br label %13

91:                                               ; preds = %13
  ret void
}

declare dso_local i32 @LIST_INIT(%struct.lockf_entry_list*) #1

declare dso_local i32 @LIST_INSERT_HEAD(%struct.lockf_entry_list*, %struct.lockf_entry*, i32) #1

declare dso_local i32 @LIST_EMPTY(%struct.lockf_entry_list*) #1

declare dso_local %struct.lockf_entry* @LIST_FIRST(%struct.lockf_entry_list*) #1

declare dso_local i32 @LIST_REMOVE(%struct.lockf_entry*, i32) #1

declare dso_local i32 @lf_findoverlap(%struct.lockf_entry**, %struct.lockf_entry*, i32) #1

declare dso_local i32 @lf_update_dependancies(%struct.lockf*, %struct.lockf_entry*, i32, %struct.lockf_entry_list*) #1

declare dso_local i32 @lf_free_lock(%struct.lockf_entry*) #1

declare dso_local i32 @lf_split(%struct.lockf*, %struct.lockf_entry*, %struct.lockf_entry*, %struct.lockf_entry_list*) #1

declare dso_local %struct.lockf_entry* @LIST_NEXT(%struct.lockf_entry*, i32) #1

declare dso_local i32 @lf_set_end(%struct.lockf*, %struct.lockf_entry*, i32, %struct.lockf_entry_list*) #1

declare dso_local i32 @lf_set_start(%struct.lockf*, %struct.lockf_entry*, i32, %struct.lockf_entry_list*) #1

declare dso_local i32 @lf_insert_lock(%struct.lockf*, %struct.lockf_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
