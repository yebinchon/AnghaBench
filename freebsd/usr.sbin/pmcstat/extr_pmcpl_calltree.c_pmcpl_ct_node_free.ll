; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_calltree.c_pmcpl_ct_node_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_calltree.c_pmcpl_ct_node_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcpl_ct_node = type { i32, %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcpl_ct_node*)* @pmcpl_ct_node_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcpl_ct_node_free(%struct.pmcpl_ct_node* %0) #0 {
  %2 = alloca %struct.pmcpl_ct_node*, align 8
  %3 = alloca i32, align 4
  store %struct.pmcpl_ct_node* %0, %struct.pmcpl_ct_node** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %27, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %7 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %4
  %11 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %12 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %11, i32 0, i32 2
  %13 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %13, i64 %15
  %17 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %16, i32 0, i32 5
  %18 = call i32 @pmcpl_ct_samples_free(i32* %17)
  %19 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %20 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %19, i32 0, i32 2
  %21 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %21, i64 %23
  %25 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %24, i32 0, i32 4
  %26 = call i32 @pmcpl_ct_samples_free(i32* %25)
  br label %27

27:                                               ; preds = %10
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %4

30:                                               ; preds = %4
  %31 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %32 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %31, i32 0, i32 3
  %33 = call i32 @pmcpl_ct_samples_free(i32* %32)
  %34 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %35 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %34, i32 0, i32 2
  %36 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %35, align 8
  %37 = call i32 @free(%struct.pmcpl_ct_node* %36)
  %38 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %39 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %38, i32 0, i32 1
  %40 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %39, align 8
  %41 = call i32 @free(%struct.pmcpl_ct_node* %40)
  %42 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %43 = call i32 @free(%struct.pmcpl_ct_node* %42)
  ret void
}

declare dso_local i32 @pmcpl_ct_samples_free(i32*) #1

declare dso_local i32 @free(%struct.pmcpl_ct_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
