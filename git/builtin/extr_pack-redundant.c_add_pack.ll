; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-redundant.c_add_pack.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-redundant.c_add_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.pack_list = type { i32*, %struct.TYPE_5__*, i32, %struct.packed_git* }
%struct.TYPE_5__ = type { i32 }
%struct.packed_git = type { i8*, i32, i64, i64 }
%struct.object_id = type { i32 }

@alt_odb = common dso_local global i64 0, align 8
@verbose = common dso_local global i64 0, align 8
@the_hash_algo = common dso_local global %struct.TYPE_4__* null, align 8
@local_packs = common dso_local global i32 0, align 4
@altodb_packs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pack_list* (%struct.packed_git*)* @add_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pack_list* @add_pack(%struct.packed_git* %0) #0 {
  %2 = alloca %struct.pack_list*, align 8
  %3 = alloca %struct.packed_git*, align 8
  %4 = alloca %struct.pack_list, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.packed_git* %0, %struct.packed_git** %3, align 8
  store i64 0, i64* %5, align 8
  %8 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %9 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load i64, i64* @alt_odb, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i64, i64* @verbose, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  store %struct.pack_list* null, %struct.pack_list** %2, align 8
  br label %87

19:                                               ; preds = %15, %12, %1
  %20 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %21 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %4, i32 0, i32 3
  store %struct.packed_git* %20, %struct.packed_git** %21, align 8
  %22 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %4, i32 0, i32 1
  %23 = call i32 @llist_init(%struct.TYPE_5__** %22)
  %24 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %25 = call i64 @open_pack_index(%struct.packed_git* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store %struct.pack_list* null, %struct.pack_list** %2, align 8
  br label %87

28:                                               ; preds = %19
  %29 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %30 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %7, align 8
  %32 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %33 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %34, 2
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 4, i32 8
  %38 = add nsw i32 1024, %37
  %39 = load i8*, i8** %7, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %7, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_hash_algo, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %46 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %47, 2
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 4, i32 0
  %51 = add nsw i32 %44, %50
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %6, align 8
  br label %53

53:                                               ; preds = %61, %28
  %54 = load i64, i64* %5, align 8
  %55 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %56 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = mul i64 %57, %58
  %60 = icmp ult i64 %54, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %4, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load i64, i64* %5, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = bitcast i8* %66 to %struct.object_id*
  %68 = call i32 @llist_insert_back(%struct.TYPE_5__* %63, %struct.object_id* %67)
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* %5, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %5, align 8
  br label %53

72:                                               ; preds = %53
  %73 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %4, i32 0, i32 1
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %4, i32 0, i32 2
  store i32 %76, i32* %77, align 8
  %78 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %4, i32 0, i32 0
  store i32* null, i32** %78, align 8
  %79 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %80 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %72
  %84 = call %struct.pack_list* @pack_list_insert(i32* @local_packs, %struct.pack_list* %4)
  store %struct.pack_list* %84, %struct.pack_list** %2, align 8
  br label %87

85:                                               ; preds = %72
  %86 = call %struct.pack_list* @pack_list_insert(i32* @altodb_packs, %struct.pack_list* %4)
  store %struct.pack_list* %86, %struct.pack_list** %2, align 8
  br label %87

87:                                               ; preds = %85, %83, %27, %18
  %88 = load %struct.pack_list*, %struct.pack_list** %2, align 8
  ret %struct.pack_list* %88
}

declare dso_local i32 @llist_init(%struct.TYPE_5__**) #1

declare dso_local i64 @open_pack_index(%struct.packed_git*) #1

declare dso_local i32 @llist_insert_back(%struct.TYPE_5__*, %struct.object_id*) #1

declare dso_local %struct.pack_list* @pack_list_insert(i32*, %struct.pack_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
