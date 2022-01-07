; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_preimage_oid_in_gitlink_patch.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_preimage_oid_in_gitlink_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.patch = type { i8*, %struct.fragment* }
%struct.fragment = type { i32, i32, i32, i32, i32 }
%struct.object_id = type { i32 }

@preimage_oid_in_gitlink_patch.heading = internal constant [20 x i8] c"-Subproject commit \00", align 16
@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.patch*, %struct.object_id*)* @preimage_oid_in_gitlink_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @preimage_oid_in_gitlink_patch(%struct.patch* %0, %struct.object_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.patch*, align 8
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca %struct.fragment*, align 8
  %7 = alloca i8*, align 8
  store %struct.patch* %0, %struct.patch** %4, align 8
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  %8 = load %struct.patch*, %struct.patch** %4, align 8
  %9 = getelementptr inbounds %struct.patch, %struct.patch* %8, i32 0, i32 1
  %10 = load %struct.fragment*, %struct.fragment** %9, align 8
  store %struct.fragment* %10, %struct.fragment** %6, align 8
  %11 = load %struct.fragment*, %struct.fragment** %6, align 8
  %12 = icmp ne %struct.fragment* %11, null
  br i1 %12, label %13, label %71

13:                                               ; preds = %2
  %14 = load %struct.fragment*, %struct.fragment** %6, align 8
  %15 = getelementptr inbounds %struct.fragment, %struct.fragment* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %71, label %18

18:                                               ; preds = %13
  %19 = load %struct.fragment*, %struct.fragment** %6, align 8
  %20 = getelementptr inbounds %struct.fragment, %struct.fragment* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %71

23:                                               ; preds = %18
  %24 = load %struct.fragment*, %struct.fragment** %6, align 8
  %25 = getelementptr inbounds %struct.fragment, %struct.fragment* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %71

28:                                               ; preds = %23
  %29 = load %struct.fragment*, %struct.fragment** %6, align 8
  %30 = getelementptr inbounds %struct.fragment, %struct.fragment* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.fragment*, %struct.fragment** %6, align 8
  %33 = getelementptr inbounds %struct.fragment, %struct.fragment* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @memchr(i32 %31, i8 signext 10, i32 %34)
  store i8* %35, i8** %7, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %71

37:                                               ; preds = %28
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %7, align 8
  %40 = call i64 @starts_with(i8* %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @preimage_oid_in_gitlink_patch.heading, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %71

42:                                               ; preds = %37
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 20
  %45 = getelementptr inbounds i8, i8* %44, i64 -1
  %46 = load %struct.object_id*, %struct.object_id** %5, align 8
  %47 = call i32 @get_oid_hex(i8* %45, %struct.object_id* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %71, label %49

49:                                               ; preds = %42
  %50 = load i8*, i8** %7, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 20, %54
  %56 = sub i64 %55, 1
  %57 = getelementptr inbounds i8, i8* %50, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 10
  br i1 %60, label %61, label %71

61:                                               ; preds = %49
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 20
  %64 = getelementptr inbounds i8, i8* %63, i64 -1
  %65 = load %struct.patch*, %struct.patch** %4, align 8
  %66 = getelementptr inbounds %struct.patch, %struct.patch* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @starts_with(i8* %64, i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %77

71:                                               ; preds = %61, %49, %42, %37, %28, %23, %18, %13, %2
  %72 = load %struct.patch*, %struct.patch** %4, align 8
  %73 = getelementptr inbounds %struct.patch, %struct.patch* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.object_id*, %struct.object_id** %5, align 8
  %76 = call i32 @get_oid_hex(i8* %74, %struct.object_id* %75)
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %71, %70
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i8* @memchr(i32, i8 signext, i32) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @get_oid_hex(i8*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
