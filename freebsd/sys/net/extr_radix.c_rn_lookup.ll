; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_radix.c_rn_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_radix.c_rn_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node = type { i8*, i8*, %struct.radix_node* }
%struct.radix_head = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.radix_node* @rn_lookup(i8* %0, i8* %1, %struct.radix_head* %2) #0 {
  %4 = alloca %struct.radix_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.radix_head*, align 8
  %8 = alloca %struct.radix_node*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.radix_head* %2, %struct.radix_head** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %50

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.radix_head*, %struct.radix_head** %7, align 8
  %15 = getelementptr inbounds %struct.radix_head, %struct.radix_head* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.radix_head*, %struct.radix_head** %7, align 8
  %18 = getelementptr inbounds %struct.radix_head, %struct.radix_head* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.radix_node* @rn_addmask(i8* %13, i32 %16, i32 1, i32 %21)
  store %struct.radix_node* %22, %struct.radix_node** %8, align 8
  %23 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %24 = icmp eq %struct.radix_node* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %12
  store %struct.radix_node* null, %struct.radix_node** %4, align 8
  br label %82

26:                                               ; preds = %12
  %27 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %28 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load %struct.radix_head*, %struct.radix_head** %7, align 8
  %32 = call %struct.radix_node* @rn_match(i8* %30, %struct.radix_head* %31)
  store %struct.radix_node* %32, %struct.radix_node** %8, align 8
  br label %33

33:                                               ; preds = %44, %26
  %34 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %35 = icmp ne %struct.radix_node* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %38 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = icmp ne i8* %39, %40
  br label %42

42:                                               ; preds = %36, %33
  %43 = phi i1 [ false, %33 ], [ %41, %36 ]
  br i1 %43, label %44, label %48

44:                                               ; preds = %42
  %45 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %46 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %45, i32 0, i32 2
  %47 = load %struct.radix_node*, %struct.radix_node** %46, align 8
  store %struct.radix_node* %47, %struct.radix_node** %8, align 8
  br label %33

48:                                               ; preds = %42
  %49 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  store %struct.radix_node* %49, %struct.radix_node** %4, align 8
  br label %82

50:                                               ; preds = %3
  %51 = load i8*, i8** %5, align 8
  %52 = load %struct.radix_head*, %struct.radix_head** %7, align 8
  %53 = call %struct.radix_node* @rn_match(i8* %51, %struct.radix_head* %52)
  store %struct.radix_node* %53, %struct.radix_node** %8, align 8
  %54 = icmp eq %struct.radix_node* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store %struct.radix_node* null, %struct.radix_node** %4, align 8
  br label %82

56:                                               ; preds = %50
  %57 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %58 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @LEN(i8* %59)
  %61 = load i8*, i8** %5, align 8
  %62 = call i64 @LEN(i8* %61)
  %63 = icmp ne i64 %60, %62
  br i1 %63, label %73, label %64

64:                                               ; preds = %56
  %65 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %66 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = call i64 @LEN(i8* %69)
  %71 = call i64 @bcmp(i8* %67, i8* %68, i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64, %56
  store %struct.radix_node* null, %struct.radix_node** %4, align 8
  br label %82

74:                                               ; preds = %64
  %75 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %76 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store %struct.radix_node* null, %struct.radix_node** %4, align 8
  br label %82

80:                                               ; preds = %74
  %81 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  store %struct.radix_node* %81, %struct.radix_node** %4, align 8
  br label %82

82:                                               ; preds = %80, %79, %73, %55, %48, %25
  %83 = load %struct.radix_node*, %struct.radix_node** %4, align 8
  ret %struct.radix_node* %83
}

declare dso_local %struct.radix_node* @rn_addmask(i8*, i32, i32, i32) #1

declare dso_local %struct.radix_node* @rn_match(i8*, %struct.radix_head*) #1

declare dso_local i64 @LEN(i8*) #1

declare dso_local i64 @bcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
