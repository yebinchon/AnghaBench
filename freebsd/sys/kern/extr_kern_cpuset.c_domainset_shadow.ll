; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_domainset_shadow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_domainset_shadow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domainset = type { i32 }
%struct.domainlist = type { i32 }

@ds_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.domainset* (%struct.domainset*, %struct.domainset*, %struct.domainlist*)* @domainset_shadow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.domainset* @domainset_shadow(%struct.domainset* %0, %struct.domainset* %1, %struct.domainlist* %2) #0 {
  %4 = alloca %struct.domainset*, align 8
  %5 = alloca %struct.domainset*, align 8
  %6 = alloca %struct.domainlist*, align 8
  %7 = alloca %struct.domainset*, align 8
  store %struct.domainset* %0, %struct.domainset** %4, align 8
  store %struct.domainset* %1, %struct.domainset** %5, align 8
  store %struct.domainlist* %2, %struct.domainlist** %6, align 8
  %8 = load %struct.domainlist*, %struct.domainlist** %6, align 8
  %9 = call %struct.domainset* @LIST_FIRST(%struct.domainlist* %8)
  store %struct.domainset* %9, %struct.domainset** %7, align 8
  %10 = load %struct.domainset*, %struct.domainset** %7, align 8
  %11 = load i32, i32* @ds_link, align 4
  %12 = call i32 @LIST_REMOVE(%struct.domainset* %10, i32 %11)
  %13 = load %struct.domainset*, %struct.domainset** %5, align 8
  %14 = load %struct.domainset*, %struct.domainset** %7, align 8
  %15 = call i32 @domainset_copy(%struct.domainset* %13, %struct.domainset* %14)
  %16 = load %struct.domainset*, %struct.domainset** %7, align 8
  %17 = getelementptr inbounds %struct.domainset, %struct.domainset* %16, i32 0, i32 0
  %18 = load %struct.domainset*, %struct.domainset** %4, align 8
  %19 = getelementptr inbounds %struct.domainset, %struct.domainset* %18, i32 0, i32 0
  %20 = call i32 @DOMAINSET_AND(i32* %17, i32* %19)
  %21 = load %struct.domainset*, %struct.domainset** %7, align 8
  %22 = load %struct.domainlist*, %struct.domainlist** %6, align 8
  %23 = call %struct.domainset* @_domainset_create(%struct.domainset* %21, %struct.domainlist* %22)
  ret %struct.domainset* %23
}

declare dso_local %struct.domainset* @LIST_FIRST(%struct.domainlist*) #1

declare dso_local i32 @LIST_REMOVE(%struct.domainset*, i32) #1

declare dso_local i32 @domainset_copy(%struct.domainset*, %struct.domainset*) #1

declare dso_local i32 @DOMAINSET_AND(i32*, i32*) #1

declare dso_local %struct.domainset* @_domainset_create(%struct.domainset*, %struct.domainlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
