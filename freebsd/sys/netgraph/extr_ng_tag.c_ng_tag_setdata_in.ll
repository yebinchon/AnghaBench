; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_tag.c_ng_tag_setdata_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_tag.c_ng_tag_setdata_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_tag_hookin = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.ng_tag_hookin*, i8*, i32, i32, i32, i32, i8*, i8* }

@M_NETGRAPH_TAG = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ng_tag_hookin*)* @ng_tag_setdata_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_tag_setdata_in(i32 %0, %struct.ng_tag_hookin* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ng_tag_hookin*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.ng_tag_hookin*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.ng_tag_hookin* %1, %struct.ng_tag_hookin** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.TYPE_3__* @NG_HOOK_PRIVATE(i32 %8)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %5, align 8
  %10 = load %struct.ng_tag_hookin*, %struct.ng_tag_hookin** %4, align 8
  %11 = getelementptr inbounds %struct.ng_tag_hookin, %struct.ng_tag_hookin* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @NG_TAG_HOOKIN_SIZE(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @M_NETGRAPH_TAG, align 4
  %16 = load i32, i32* @M_WAITOK, align 4
  %17 = call %struct.ng_tag_hookin* @malloc(i32 %14, i32 %15, i32 %16)
  store %struct.ng_tag_hookin* %17, %struct.ng_tag_hookin** %6, align 8
  %18 = load %struct.ng_tag_hookin*, %struct.ng_tag_hookin** %4, align 8
  %19 = load %struct.ng_tag_hookin*, %struct.ng_tag_hookin** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @bcopy(%struct.ng_tag_hookin* %18, %struct.ng_tag_hookin* %19, i32 %20)
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.ng_tag_hookin*, %struct.ng_tag_hookin** %23, align 8
  %25 = icmp ne %struct.ng_tag_hookin* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.ng_tag_hookin*, %struct.ng_tag_hookin** %28, align 8
  %30 = load i32, i32* @M_NETGRAPH_TAG, align 4
  %31 = call i32 @free(%struct.ng_tag_hookin* %29, i32 %30)
  br label %32

32:                                               ; preds = %26, %2
  %33 = load %struct.ng_tag_hookin*, %struct.ng_tag_hookin** %6, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store %struct.ng_tag_hookin* %33, %struct.ng_tag_hookin** %35, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @NG_HOOK_NODE(i32 %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.ng_tag_hookin*, %struct.ng_tag_hookin** %39, align 8
  %41 = getelementptr inbounds %struct.ng_tag_hookin, %struct.ng_tag_hookin* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @ng_findhook(i32 %37, i32 %42)
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 7
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @NG_HOOK_NODE(i32 %46)
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load %struct.ng_tag_hookin*, %struct.ng_tag_hookin** %49, align 8
  %51 = getelementptr inbounds %struct.ng_tag_hookin, %struct.ng_tag_hookin* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = call i8* @ng_findhook(i32 %47, i32 %52)
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 6
  store i8* %53, i8** %55, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load %struct.ng_tag_hookin*, %struct.ng_tag_hookin** %57, align 8
  %59 = getelementptr inbounds %struct.ng_tag_hookin, %struct.ng_tag_hookin* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load %struct.ng_tag_hookin*, %struct.ng_tag_hookin** %64, align 8
  %66 = getelementptr inbounds %struct.ng_tag_hookin, %struct.ng_tag_hookin* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load %struct.ng_tag_hookin*, %struct.ng_tag_hookin** %71, align 8
  %73 = getelementptr inbounds %struct.ng_tag_hookin, %struct.ng_tag_hookin* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load %struct.ng_tag_hookin*, %struct.ng_tag_hookin** %78, align 8
  %80 = getelementptr inbounds %struct.ng_tag_hookin, %struct.ng_tag_hookin* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load %struct.ng_tag_hookin*, %struct.ng_tag_hookin** %85, align 8
  %87 = getelementptr inbounds %struct.ng_tag_hookin, %struct.ng_tag_hookin* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i8*
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  ret i32 0
}

declare dso_local %struct.TYPE_3__* @NG_HOOK_PRIVATE(i32) #1

declare dso_local i32 @NG_TAG_HOOKIN_SIZE(i32) #1

declare dso_local %struct.ng_tag_hookin* @malloc(i32, i32, i32) #1

declare dso_local i32 @bcopy(%struct.ng_tag_hookin*, %struct.ng_tag_hookin*, i32) #1

declare dso_local i32 @free(%struct.ng_tag_hookin*, i32) #1

declare dso_local i8* @ng_findhook(i32, i32) #1

declare dso_local i32 @NG_HOOK_NODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
