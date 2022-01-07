; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_mktree.c_write_tree.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_mktree.c_write_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.treeent = type { %struct.TYPE_3__, i32, i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.object_id = type { i32 }
%struct.strbuf = type { i32, i32 }

@entries = common dso_local global %struct.treeent** null, align 8
@used = common dso_local global i32 0, align 4
@ent_compare = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%o %s%c\00", align 1
@the_hash_algo = common dso_local global %struct.TYPE_4__* null, align 8
@tree_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object_id*)* @write_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_tree(%struct.object_id* %0) #0 {
  %2 = alloca %struct.object_id*, align 8
  %3 = alloca %struct.strbuf, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.treeent*, align 8
  store %struct.object_id* %0, %struct.object_id** %2, align 8
  %7 = load %struct.treeent**, %struct.treeent*** @entries, align 8
  %8 = load i32, i32* @used, align 4
  %9 = load i32, i32* @ent_compare, align 4
  %10 = call i32 @QSORT(%struct.treeent** %7, i32 %8, i32 %9)
  store i32 0, i32* %5, align 4
  store i64 0, i64* %4, align 8
  br label %11

11:                                               ; preds = %26, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @used, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %11
  %16 = load %struct.treeent**, %struct.treeent*** @entries, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.treeent*, %struct.treeent** %16, i64 %18
  %20 = load %struct.treeent*, %struct.treeent** %19, align 8
  %21 = getelementptr inbounds %struct.treeent, %struct.treeent* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 32, %22
  %24 = load i64, i64* %4, align 8
  %25 = add i64 %24, %23
  store i64 %25, i64* %4, align 8
  br label %26

26:                                               ; preds = %15
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %11

29:                                               ; preds = %11
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @strbuf_init(%struct.strbuf* %3, i64 %30)
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %57, %29
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @used, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %32
  %37 = load %struct.treeent**, %struct.treeent*** @entries, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.treeent*, %struct.treeent** %37, i64 %39
  %41 = load %struct.treeent*, %struct.treeent** %40, align 8
  store %struct.treeent* %41, %struct.treeent** %6, align 8
  %42 = load %struct.treeent*, %struct.treeent** %6, align 8
  %43 = getelementptr inbounds %struct.treeent, %struct.treeent* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.treeent*, %struct.treeent** %6, align 8
  %46 = getelementptr inbounds %struct.treeent, %struct.treeent* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @strbuf_addf(%struct.strbuf* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47, i8 signext 0)
  %49 = load %struct.treeent*, %struct.treeent** %6, align 8
  %50 = getelementptr inbounds %struct.treeent, %struct.treeent* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_hash_algo, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @strbuf_add(%struct.strbuf* %3, i32 %52, i32 %55)
  br label %57

57:                                               ; preds = %36
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %32

60:                                               ; preds = %32
  %61 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @tree_type, align 4
  %66 = load %struct.object_id*, %struct.object_id** %2, align 8
  %67 = call i32 @write_object_file(i32 %62, i32 %64, i32 %65, %struct.object_id* %66)
  %68 = call i32 @strbuf_release(%struct.strbuf* %3)
  ret void
}

declare dso_local i32 @QSORT(%struct.treeent**, i32, i32) #1

declare dso_local i32 @strbuf_init(%struct.strbuf*, i64) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i32, i8 signext) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i32, i32) #1

declare dso_local i32 @write_object_file(i32, i32, i32, %struct.object_id*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
