; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-redundant.c_cmp_two_packs.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-redundant.c_cmp_two_packs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.pack_list = type { i8*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i8*, i32, i64 }
%struct.llist_item = type { i32 }
%struct.object_id = type { i32 }

@the_hash_algo = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pack_list*, %struct.pack_list*)* @cmp_two_packs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmp_two_packs(%struct.pack_list* %0, %struct.pack_list* %1) #0 {
  %3 = alloca %struct.pack_list*, align 8
  %4 = alloca %struct.pack_list*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.llist_item*, align 8
  %12 = alloca %struct.llist_item*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pack_list* %0, %struct.pack_list** %3, align 8
  store %struct.pack_list* %1, %struct.pack_list** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store %struct.llist_item* null, %struct.llist_item** %11, align 8
  store %struct.llist_item* null, %struct.llist_item** %12, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_hash_algo, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %13, align 4
  %18 = load %struct.pack_list*, %struct.pack_list** %3, align 8
  %19 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %2
  %23 = load %struct.pack_list*, %struct.pack_list** %3, align 8
  %24 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i8* @llist_copy(i32 %25)
  %27 = load %struct.pack_list*, %struct.pack_list** %3, align 8
  %28 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  br label %29

29:                                               ; preds = %22, %2
  %30 = load %struct.pack_list*, %struct.pack_list** %4, align 8
  %31 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = load %struct.pack_list*, %struct.pack_list** %4, align 8
  %36 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @llist_copy(i32 %37)
  %39 = load %struct.pack_list*, %struct.pack_list** %4, align 8
  %40 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  br label %41

41:                                               ; preds = %34, %29
  %42 = load %struct.pack_list*, %struct.pack_list** %3, align 8
  %43 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %9, align 8
  %47 = load %struct.pack_list*, %struct.pack_list** %4, align 8
  %48 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %10, align 8
  %52 = load %struct.pack_list*, %struct.pack_list** %3, align 8
  %53 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %56, 2
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 4, i32 8
  %60 = add nsw i32 1024, %59
  %61 = load i8*, i8** %9, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %9, align 8
  %64 = load %struct.pack_list*, %struct.pack_list** %4, align 8
  %65 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %64, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %68, 2
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 4, i32 8
  %72 = add nsw i32 1024, %71
  %73 = load i8*, i8** %10, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8* %75, i8** %10, align 8
  %76 = load i32, i32* %13, align 4
  %77 = load %struct.pack_list*, %struct.pack_list** %3, align 8
  %78 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %77, i32 0, i32 1
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %81, 2
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 4, i32 0
  %85 = add i32 %76, %84
  %86 = zext i32 %85 to i64
  store i64 %86, i64* %7, align 8
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.pack_list*, %struct.pack_list** %4, align 8
  %89 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %88, i32 0, i32 1
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %92, 2
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 4, i32 0
  %96 = add i32 %87, %95
  %97 = zext i32 %96 to i64
  store i64 %97, i64* %8, align 8
  br label %98

98:                                               ; preds = %166, %130, %41
  %99 = load i64, i64* %5, align 8
  %100 = load %struct.pack_list*, %struct.pack_list** %3, align 8
  %101 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %100, i32 0, i32 1
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %7, align 8
  %106 = mul i64 %104, %105
  %107 = icmp ult i64 %99, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %98
  %109 = load i64, i64* %6, align 8
  %110 = load %struct.pack_list*, %struct.pack_list** %4, align 8
  %111 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %110, i32 0, i32 1
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %8, align 8
  %116 = mul i64 %114, %115
  %117 = icmp ult i64 %109, %116
  br label %118

118:                                              ; preds = %108, %98
  %119 = phi i1 [ false, %98 ], [ %117, %108 ]
  br i1 %119, label %120, label %167

120:                                              ; preds = %118
  %121 = load i8*, i8** %9, align 8
  %122 = load i64, i64* %5, align 8
  %123 = getelementptr inbounds i8, i8* %121, i64 %122
  %124 = load i8*, i8** %10, align 8
  %125 = load i64, i64* %6, align 8
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  %127 = call i32 @hashcmp(i8* %123, i8* %126)
  store i32 %127, i32* %14, align 4
  %128 = load i32, i32* %14, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %155

130:                                              ; preds = %120
  %131 = load %struct.pack_list*, %struct.pack_list** %3, align 8
  %132 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = load i8*, i8** %9, align 8
  %135 = load i64, i64* %5, align 8
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  %137 = bitcast i8* %136 to %struct.object_id*
  %138 = load %struct.llist_item*, %struct.llist_item** %11, align 8
  %139 = call %struct.llist_item* @llist_sorted_remove(i8* %133, %struct.object_id* %137, %struct.llist_item* %138)
  store %struct.llist_item* %139, %struct.llist_item** %11, align 8
  %140 = load %struct.pack_list*, %struct.pack_list** %4, align 8
  %141 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = load i8*, i8** %9, align 8
  %144 = load i64, i64* %5, align 8
  %145 = getelementptr inbounds i8, i8* %143, i64 %144
  %146 = bitcast i8* %145 to %struct.object_id*
  %147 = load %struct.llist_item*, %struct.llist_item** %12, align 8
  %148 = call %struct.llist_item* @llist_sorted_remove(i8* %142, %struct.object_id* %146, %struct.llist_item* %147)
  store %struct.llist_item* %148, %struct.llist_item** %12, align 8
  %149 = load i64, i64* %7, align 8
  %150 = load i64, i64* %5, align 8
  %151 = add i64 %150, %149
  store i64 %151, i64* %5, align 8
  %152 = load i64, i64* %8, align 8
  %153 = load i64, i64* %6, align 8
  %154 = add i64 %153, %152
  store i64 %154, i64* %6, align 8
  br label %98

155:                                              ; preds = %120
  %156 = load i32, i32* %14, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %155
  %159 = load i64, i64* %7, align 8
  %160 = load i64, i64* %5, align 8
  %161 = add i64 %160, %159
  store i64 %161, i64* %5, align 8
  br label %166

162:                                              ; preds = %155
  %163 = load i64, i64* %8, align 8
  %164 = load i64, i64* %6, align 8
  %165 = add i64 %164, %163
  store i64 %165, i64* %6, align 8
  br label %166

166:                                              ; preds = %162, %158
  br label %98

167:                                              ; preds = %118
  ret void
}

declare dso_local i8* @llist_copy(i32) #1

declare dso_local i32 @hashcmp(i8*, i8*) #1

declare dso_local %struct.llist_item* @llist_sorted_remove(i8*, %struct.object_id*, %struct.llist_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
