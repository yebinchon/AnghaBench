; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_radix.c_rn_walktree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_radix.c_rn_walktree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_head = type { %struct.radix_node* }
%struct.radix_node = type { i64, i32, %struct.radix_node*, %struct.radix_node*, %struct.radix_node*, %struct.radix_node* }
%struct.radix_node.0 = type opaque

@RNF_ROOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rn_walktree(%struct.radix_head* %0, i32 (%struct.radix_node.0*, i8*)** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radix_head*, align 8
  %6 = alloca i32 (%struct.radix_node.0*, i8*)**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.radix_node*, align 8
  %10 = alloca %struct.radix_node*, align 8
  %11 = alloca %struct.radix_node*, align 8
  store %struct.radix_head* %0, %struct.radix_head** %5, align 8
  store i32 (%struct.radix_node.0*, i8*)** %1, i32 (%struct.radix_node.0*, i8*)*** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.radix_head*, %struct.radix_head** %5, align 8
  %13 = getelementptr inbounds %struct.radix_head, %struct.radix_head* %12, i32 0, i32 0
  %14 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  store %struct.radix_node* %14, %struct.radix_node** %11, align 8
  br label %15

15:                                               ; preds = %20, %3
  %16 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %17 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %22 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %21, i32 0, i32 3
  %23 = load %struct.radix_node*, %struct.radix_node** %22, align 8
  store %struct.radix_node* %23, %struct.radix_node** %11, align 8
  br label %15

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %98, %24
  %26 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  store %struct.radix_node* %26, %struct.radix_node** %9, align 8
  br label %27

27:                                               ; preds = %44, %25
  %28 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %29 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %28, i32 0, i32 5
  %30 = load %struct.radix_node*, %struct.radix_node** %29, align 8
  %31 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %30, i32 0, i32 4
  %32 = load %struct.radix_node*, %struct.radix_node** %31, align 8
  %33 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %34 = icmp eq %struct.radix_node* %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %37 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @RNF_ROOT, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br label %42

42:                                               ; preds = %35, %27
  %43 = phi i1 [ false, %27 ], [ %41, %35 ]
  br i1 %43, label %44, label %48

44:                                               ; preds = %42
  %45 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %46 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %45, i32 0, i32 5
  %47 = load %struct.radix_node*, %struct.radix_node** %46, align 8
  store %struct.radix_node* %47, %struct.radix_node** %11, align 8
  br label %27

48:                                               ; preds = %42
  %49 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %50 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %49, i32 0, i32 5
  %51 = load %struct.radix_node*, %struct.radix_node** %50, align 8
  %52 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %51, i32 0, i32 4
  %53 = load %struct.radix_node*, %struct.radix_node** %52, align 8
  store %struct.radix_node* %53, %struct.radix_node** %11, align 8
  br label %54

54:                                               ; preds = %59, %48
  %55 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %56 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sge i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %61 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %60, i32 0, i32 3
  %62 = load %struct.radix_node*, %struct.radix_node** %61, align 8
  store %struct.radix_node* %62, %struct.radix_node** %11, align 8
  br label %54

63:                                               ; preds = %54
  %64 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  store %struct.radix_node* %64, %struct.radix_node** %10, align 8
  br label %65

65:                                               ; preds = %88, %63
  %66 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  store %struct.radix_node* %66, %struct.radix_node** %11, align 8
  %67 = icmp ne %struct.radix_node* %66, null
  br i1 %67, label %68, label %89

68:                                               ; preds = %65
  %69 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %70 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %69, i32 0, i32 2
  %71 = load %struct.radix_node*, %struct.radix_node** %70, align 8
  store %struct.radix_node* %71, %struct.radix_node** %9, align 8
  %72 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %73 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @RNF_ROOT, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %68
  %79 = load i32 (%struct.radix_node.0*, i8*)**, i32 (%struct.radix_node.0*, i8*)*** %6, align 8
  %80 = load i32 (%struct.radix_node.0*, i8*)*, i32 (%struct.radix_node.0*, i8*)** %79, align 8
  %81 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %82 = bitcast %struct.radix_node* %81 to %struct.radix_node.0*
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 %80(%struct.radix_node.0* %82, i8* %83)
  store i32 %84, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %4, align 4
  br label %99

88:                                               ; preds = %78, %68
  br label %65

89:                                               ; preds = %65
  %90 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  store %struct.radix_node* %90, %struct.radix_node** %11, align 8
  %91 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %92 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @RNF_ROOT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  store i32 0, i32* %4, align 4
  br label %99

98:                                               ; preds = %89
  br label %25

99:                                               ; preds = %97, %86
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
