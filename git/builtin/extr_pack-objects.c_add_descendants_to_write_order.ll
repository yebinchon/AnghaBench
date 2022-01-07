; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_add_descendants_to_write_order.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_add_descendants_to_write_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object_entry**, i32*, %struct.object_entry*)* @add_descendants_to_write_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_descendants_to_write_order(%struct.object_entry** %0, i32* %1, %struct.object_entry* %2) #0 {
  %4 = alloca %struct.object_entry**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.object_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.object_entry*, align 8
  store %struct.object_entry** %0, %struct.object_entry*** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.object_entry* %2, %struct.object_entry** %6, align 8
  store i32 1, i32* %7, align 4
  br label %9

9:                                                ; preds = %71, %45, %3
  %10 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %11 = icmp ne %struct.object_entry* %10, null
  br i1 %11, label %12, label %72

12:                                               ; preds = %9
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %12
  %16 = load %struct.object_entry**, %struct.object_entry*** %4, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %19 = call i32 @add_to_write_order(%struct.object_entry** %16, i32* %17, %struct.object_entry* %18)
  %20 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %21 = call %struct.object_entry* @DELTA_SIBLING(%struct.object_entry* %20)
  store %struct.object_entry* %21, %struct.object_entry** %8, align 8
  br label %22

22:                                               ; preds = %30, %15
  %23 = load %struct.object_entry*, %struct.object_entry** %8, align 8
  %24 = icmp ne %struct.object_entry* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load %struct.object_entry**, %struct.object_entry*** %4, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = load %struct.object_entry*, %struct.object_entry** %8, align 8
  %29 = call i32 @add_to_write_order(%struct.object_entry** %26, i32* %27, %struct.object_entry* %28)
  br label %30

30:                                               ; preds = %25
  %31 = load %struct.object_entry*, %struct.object_entry** %8, align 8
  %32 = call %struct.object_entry* @DELTA_SIBLING(%struct.object_entry* %31)
  store %struct.object_entry* %32, %struct.object_entry** %8, align 8
  br label %22

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33, %12
  %35 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %36 = call %struct.object_entry* @DELTA_CHILD(%struct.object_entry* %35)
  %37 = icmp ne %struct.object_entry* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  store i32 1, i32* %7, align 4
  %39 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %40 = call %struct.object_entry* @DELTA_CHILD(%struct.object_entry* %39)
  store %struct.object_entry* %40, %struct.object_entry** %6, align 8
  br label %71

41:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  %42 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %43 = call %struct.object_entry* @DELTA_SIBLING(%struct.object_entry* %42)
  %44 = icmp ne %struct.object_entry* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %47 = call %struct.object_entry* @DELTA_SIBLING(%struct.object_entry* %46)
  store %struct.object_entry* %47, %struct.object_entry** %6, align 8
  br label %9

48:                                               ; preds = %41
  %49 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %50 = call %struct.object_entry* @DELTA(%struct.object_entry* %49)
  store %struct.object_entry* %50, %struct.object_entry** %6, align 8
  br label %51

51:                                               ; preds = %61, %48
  %52 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %53 = icmp ne %struct.object_entry* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %56 = call %struct.object_entry* @DELTA_SIBLING(%struct.object_entry* %55)
  %57 = icmp ne %struct.object_entry* %56, null
  %58 = xor i1 %57, true
  br label %59

59:                                               ; preds = %54, %51
  %60 = phi i1 [ false, %51 ], [ %58, %54 ]
  br i1 %60, label %61, label %64

61:                                               ; preds = %59
  %62 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %63 = call %struct.object_entry* @DELTA(%struct.object_entry* %62)
  store %struct.object_entry* %63, %struct.object_entry** %6, align 8
  br label %51

64:                                               ; preds = %59
  %65 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %66 = icmp ne %struct.object_entry* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  br label %72

68:                                               ; preds = %64
  %69 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %70 = call %struct.object_entry* @DELTA_SIBLING(%struct.object_entry* %69)
  store %struct.object_entry* %70, %struct.object_entry** %6, align 8
  br label %71

71:                                               ; preds = %68, %38
  br label %9

72:                                               ; preds = %67, %9
  ret void
}

declare dso_local i32 @add_to_write_order(%struct.object_entry**, i32*, %struct.object_entry*) #1

declare dso_local %struct.object_entry* @DELTA_SIBLING(%struct.object_entry*) #1

declare dso_local %struct.object_entry* @DELTA_CHILD(%struct.object_entry*) #1

declare dso_local %struct.object_entry* @DELTA(%struct.object_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
