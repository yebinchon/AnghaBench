; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_calltree.c_pmcpl_ct_instr_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_calltree.c_pmcpl_ct_instr_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcpl_ct_node = type { i32, %struct.pmcpl_ct_instr*, i32 }
%struct.pmcpl_ct_instr = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcpl_ct_node*, i32, i64, i32)* @pmcpl_ct_instr_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcpl_ct_instr_add(%struct.pmcpl_ct_node* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.pmcpl_ct_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pmcpl_ct_instr*, align 8
  store %struct.pmcpl_ct_node* %0, %struct.pmcpl_ct_node** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %49, %4
  %12 = load i32, i32* %9, align 4
  %13 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %5, align 8
  %14 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %52

17:                                               ; preds = %11
  %18 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %5, align 8
  %19 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %18, i32 0, i32 1
  %20 = load %struct.pmcpl_ct_instr*, %struct.pmcpl_ct_instr** %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.pmcpl_ct_instr, %struct.pmcpl_ct_instr* %20, i64 %22
  %24 = getelementptr inbounds %struct.pmcpl_ct_instr, %struct.pmcpl_ct_instr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %17
  %29 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %5, align 8
  %30 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %29, i32 0, i32 1
  %31 = load %struct.pmcpl_ct_instr*, %struct.pmcpl_ct_instr** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.pmcpl_ct_instr, %struct.pmcpl_ct_instr* %31, i64 %33
  store %struct.pmcpl_ct_instr* %34, %struct.pmcpl_ct_instr** %10, align 8
  %35 = load %struct.pmcpl_ct_instr*, %struct.pmcpl_ct_instr** %10, align 8
  %36 = getelementptr inbounds %struct.pmcpl_ct_instr, %struct.pmcpl_ct_instr* %35, i32 0, i32 1
  %37 = call i32 @pmcpl_ct_samples_grow(%struct.TYPE_3__* %36)
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.pmcpl_ct_instr*, %struct.pmcpl_ct_instr** %10, align 8
  %40 = getelementptr inbounds %struct.pmcpl_ct_instr, %struct.pmcpl_ct_instr* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = add i32 %46, %38
  store i32 %47, i32* %45, align 4
  br label %90

48:                                               ; preds = %17
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %11

52:                                               ; preds = %11
  %53 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %5, align 8
  %54 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %5, align 8
  %57 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %56, i32 0, i32 2
  %58 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %5, align 8
  %59 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %58, i32 0, i32 1
  %60 = call i32 @pmcpl_ct_instr_grow(i32 %55, i32* %57, %struct.pmcpl_ct_instr** %59)
  %61 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %5, align 8
  %62 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %61, i32 0, i32 1
  %63 = load %struct.pmcpl_ct_instr*, %struct.pmcpl_ct_instr** %62, align 8
  %64 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %5, align 8
  %65 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.pmcpl_ct_instr, %struct.pmcpl_ct_instr* %63, i64 %67
  store %struct.pmcpl_ct_instr* %68, %struct.pmcpl_ct_instr** %10, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load %struct.pmcpl_ct_instr*, %struct.pmcpl_ct_instr** %10, align 8
  %71 = getelementptr inbounds %struct.pmcpl_ct_instr, %struct.pmcpl_ct_instr* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.pmcpl_ct_instr*, %struct.pmcpl_ct_instr** %10, align 8
  %73 = getelementptr inbounds %struct.pmcpl_ct_instr, %struct.pmcpl_ct_instr* %72, i32 0, i32 1
  %74 = call i32 @pmcpl_ct_samples_init(%struct.TYPE_3__* %73)
  %75 = load %struct.pmcpl_ct_instr*, %struct.pmcpl_ct_instr** %10, align 8
  %76 = getelementptr inbounds %struct.pmcpl_ct_instr, %struct.pmcpl_ct_instr* %75, i32 0, i32 1
  %77 = call i32 @pmcpl_ct_samples_grow(%struct.TYPE_3__* %76)
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.pmcpl_ct_instr*, %struct.pmcpl_ct_instr** %10, align 8
  %80 = getelementptr inbounds %struct.pmcpl_ct_instr, %struct.pmcpl_ct_instr* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %78, i32* %85, align 4
  %86 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %5, align 8
  %87 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %52, %28
  ret void
}

declare dso_local i32 @pmcpl_ct_samples_grow(%struct.TYPE_3__*) #1

declare dso_local i32 @pmcpl_ct_instr_grow(i32, i32*, %struct.pmcpl_ct_instr**) #1

declare dso_local i32 @pmcpl_ct_samples_init(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
