; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_callgraph.c_pmcstat_cgnode_allocate.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_callgraph.c_pmcstat_cgnode_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcstat_cgnode = type { i32, i64, i64, i32, %struct.pmcstat_image* }
%struct.pmcstat_image = type { i32 }

@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ERROR: Cannot allocate callgraph node\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pmcstat_cgnode* (%struct.pmcstat_image*, i32)* @pmcstat_cgnode_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pmcstat_cgnode* @pmcstat_cgnode_allocate(%struct.pmcstat_image* %0, i32 %1) #0 {
  %3 = alloca %struct.pmcstat_image*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pmcstat_cgnode*, align 8
  store %struct.pmcstat_image* %0, %struct.pmcstat_image** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call %struct.pmcstat_cgnode* @malloc(i32 40)
  store %struct.pmcstat_cgnode* %6, %struct.pmcstat_cgnode** %5, align 8
  %7 = icmp eq %struct.pmcstat_cgnode* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* @EX_OSERR, align 4
  %10 = call i32 @err(i32 %9, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %2
  %12 = load %struct.pmcstat_image*, %struct.pmcstat_image** %3, align 8
  %13 = load %struct.pmcstat_cgnode*, %struct.pmcstat_cgnode** %5, align 8
  %14 = getelementptr inbounds %struct.pmcstat_cgnode, %struct.pmcstat_cgnode* %13, i32 0, i32 4
  store %struct.pmcstat_image* %12, %struct.pmcstat_image** %14, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.pmcstat_cgnode*, %struct.pmcstat_cgnode** %5, align 8
  %17 = getelementptr inbounds %struct.pmcstat_cgnode, %struct.pmcstat_cgnode* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load %struct.pmcstat_cgnode*, %struct.pmcstat_cgnode** %5, align 8
  %19 = getelementptr inbounds %struct.pmcstat_cgnode, %struct.pmcstat_cgnode* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.pmcstat_cgnode*, %struct.pmcstat_cgnode** %5, align 8
  %21 = getelementptr inbounds %struct.pmcstat_cgnode, %struct.pmcstat_cgnode* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.pmcstat_cgnode*, %struct.pmcstat_cgnode** %5, align 8
  %23 = getelementptr inbounds %struct.pmcstat_cgnode, %struct.pmcstat_cgnode* %22, i32 0, i32 0
  %24 = call i32 @LIST_INIT(i32* %23)
  %25 = load %struct.pmcstat_cgnode*, %struct.pmcstat_cgnode** %5, align 8
  ret %struct.pmcstat_cgnode* %25
}

declare dso_local %struct.pmcstat_cgnode* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @LIST_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
