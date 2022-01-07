; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_domainset_freelist_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_domainset_freelist_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domainlist = type { i32 }
%struct.domainset = type { i32 }

@ds_link = common dso_local global i32 0, align 4
@domainset_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.domainlist*)* @domainset_freelist_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @domainset_freelist_free(%struct.domainlist* %0) #0 {
  %2 = alloca %struct.domainlist*, align 8
  %3 = alloca %struct.domainset*, align 8
  store %struct.domainlist* %0, %struct.domainlist** %2, align 8
  br label %4

4:                                                ; preds = %8, %1
  %5 = load %struct.domainlist*, %struct.domainlist** %2, align 8
  %6 = call %struct.domainset* @LIST_FIRST(%struct.domainlist* %5)
  store %struct.domainset* %6, %struct.domainset** %3, align 8
  %7 = icmp ne %struct.domainset* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = load %struct.domainset*, %struct.domainset** %3, align 8
  %10 = load i32, i32* @ds_link, align 4
  %11 = call i32 @LIST_REMOVE(%struct.domainset* %9, i32 %10)
  %12 = load i32, i32* @domainset_zone, align 4
  %13 = load %struct.domainset*, %struct.domainset** %3, align 8
  %14 = call i32 @uma_zfree(i32 %12, %struct.domainset* %13)
  br label %4

15:                                               ; preds = %4
  ret void
}

declare dso_local %struct.domainset* @LIST_FIRST(%struct.domainlist*) #1

declare dso_local i32 @LIST_REMOVE(%struct.domainset*, i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.domainset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
