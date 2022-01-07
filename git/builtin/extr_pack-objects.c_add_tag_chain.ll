; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_add_tag_chain.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_add_tag_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.tag = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@to_pack = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"unable to pack objects reachable from tag %s\00", align 1
@OBJ_TAG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object_id*)* @add_tag_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_tag_chain(%struct.object_id* %0) #0 {
  %2 = alloca %struct.object_id*, align 8
  %3 = alloca %struct.tag*, align 8
  store %struct.object_id* %0, %struct.object_id** %2, align 8
  %4 = load %struct.object_id*, %struct.object_id** %2, align 8
  %5 = call i64 @packlist_find(i32* @to_pack, %struct.object_id* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %48

8:                                                ; preds = %1
  %9 = load i32, i32* @the_repository, align 4
  %10 = load %struct.object_id*, %struct.object_id** %2, align 8
  %11 = call %struct.tag* @lookup_tag(i32 %9, %struct.object_id* %10)
  store %struct.tag* %11, %struct.tag** %3, align 8
  br label %12

12:                                               ; preds = %8, %43
  %13 = load %struct.tag*, %struct.tag** %3, align 8
  %14 = icmp ne %struct.tag* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = load %struct.tag*, %struct.tag** %3, align 8
  %17 = call i64 @parse_tag(%struct.tag* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load %struct.tag*, %struct.tag** %3, align 8
  %21 = getelementptr inbounds %struct.tag, %struct.tag* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = icmp ne %struct.TYPE_3__* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %19, %15, %12
  %25 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.object_id*, %struct.object_id** %2, align 8
  %27 = call i32 @oid_to_hex(%struct.object_id* %26)
  %28 = call i32 @die(i32 %25, i32 %27)
  br label %29

29:                                               ; preds = %24, %19
  %30 = load %struct.tag*, %struct.tag** %3, align 8
  %31 = getelementptr inbounds %struct.tag, %struct.tag* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* @OBJ_TAG, align 8
  %34 = call i32 @add_object_entry(i32* %32, i64 %33, i32* null, i32 0)
  %35 = load %struct.tag*, %struct.tag** %3, align 8
  %36 = getelementptr inbounds %struct.tag, %struct.tag* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @OBJ_TAG, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %48

43:                                               ; preds = %29
  %44 = load %struct.tag*, %struct.tag** %3, align 8
  %45 = getelementptr inbounds %struct.tag, %struct.tag* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = bitcast %struct.TYPE_3__* %46 to %struct.tag*
  store %struct.tag* %47, %struct.tag** %3, align 8
  br label %12

48:                                               ; preds = %42, %7
  ret void
}

declare dso_local i64 @packlist_find(i32*, %struct.object_id*) #1

declare dso_local %struct.tag* @lookup_tag(i32, %struct.object_id*) #1

declare dso_local i64 @parse_tag(%struct.tag*) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @add_object_entry(i32*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
