; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_calltree.c_pmcpl_ct_node_allocate.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_calltree.c_pmcpl_ct_node_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcpl_ct_node = type { i32, i32*, i64, i64, i32*, i64, i64, i64, i32*, i32*, i32 }

@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ERROR: Cannot allocate callgraph node\00", align 1
@PMCPL_PCT_WHITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pmcpl_ct_node* ()* @pmcpl_ct_node_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pmcpl_ct_node* @pmcpl_ct_node_allocate() #0 {
  %1 = alloca %struct.pmcpl_ct_node*, align 8
  %2 = call %struct.pmcpl_ct_node* @malloc(i32 88)
  store %struct.pmcpl_ct_node* %2, %struct.pmcpl_ct_node** %1, align 8
  %3 = icmp eq %struct.pmcpl_ct_node* %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32, i32* @EX_OSERR, align 4
  %6 = call i32 @err(i32 %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %4, %0
  %8 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %1, align 8
  %9 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %8, i32 0, i32 10
  %10 = call i32 @pmcpl_ct_samples_init(i32* %9)
  %11 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %1, align 8
  %12 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %11, i32 0, i32 9
  store i32* null, i32** %12, align 8
  %13 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %1, align 8
  %14 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %13, i32 0, i32 8
  store i32* null, i32** %14, align 8
  %15 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %1, align 8
  %16 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %15, i32 0, i32 7
  store i64 0, i64* %16, align 8
  %17 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %1, align 8
  %18 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %17, i32 0, i32 6
  store i64 0, i64* %18, align 8
  %19 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %1, align 8
  %20 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %19, i32 0, i32 5
  store i64 0, i64* %20, align 8
  %21 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %1, align 8
  %22 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %21, i32 0, i32 4
  store i32* null, i32** %22, align 8
  %23 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %1, align 8
  %24 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %1, align 8
  %26 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %1, align 8
  %28 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  %29 = load i32, i32* @PMCPL_PCT_WHITE, align 4
  %30 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %1, align 8
  %31 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %1, align 8
  ret %struct.pmcpl_ct_node* %32
}

declare dso_local %struct.pmcpl_ct_node* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @pmcpl_ct_samples_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
