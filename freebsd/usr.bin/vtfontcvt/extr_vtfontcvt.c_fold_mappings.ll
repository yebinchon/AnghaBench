; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/vtfontcvt/extr_vtfontcvt.c_fold_mappings.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/vtfontcvt/extr_vtfontcvt.c_fold_mappings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapping_list = type { i32 }
%struct.mapping = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@maps = common dso_local global %struct.mapping_list* null, align 8
@m_list = common dso_local global i32 0, align 4
@map_folded_count = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @fold_mappings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fold_mappings(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mapping_list*, align 8
  %4 = alloca %struct.mapping*, align 8
  %5 = alloca %struct.mapping*, align 8
  %6 = alloca %struct.mapping*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load %struct.mapping_list*, %struct.mapping_list** @maps, align 8
  %8 = load i32, i32* %2, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.mapping_list, %struct.mapping_list* %7, i64 %9
  store %struct.mapping_list* %10, %struct.mapping_list** %3, align 8
  %11 = load %struct.mapping_list*, %struct.mapping_list** %3, align 8
  %12 = call %struct.mapping* @TAILQ_FIRST(%struct.mapping_list* %11)
  store %struct.mapping* %12, %struct.mapping** %6, align 8
  store %struct.mapping* %12, %struct.mapping** %5, align 8
  %13 = load %struct.mapping_list*, %struct.mapping_list** %3, align 8
  %14 = call %struct.mapping* @TAILQ_FIRST(%struct.mapping_list* %13)
  store %struct.mapping* %14, %struct.mapping** %6, align 8
  store %struct.mapping* %14, %struct.mapping** %5, align 8
  br label %15

15:                                               ; preds = %65, %1
  %16 = load %struct.mapping*, %struct.mapping** %5, align 8
  %17 = icmp ne %struct.mapping* %16, null
  br i1 %17, label %18, label %67

18:                                               ; preds = %15
  %19 = load %struct.mapping*, %struct.mapping** %5, align 8
  %20 = load i32, i32* @m_list, align 4
  %21 = call %struct.mapping* @TAILQ_NEXT(%struct.mapping* %19, i32 %20)
  store %struct.mapping* %21, %struct.mapping** %4, align 8
  %22 = load %struct.mapping*, %struct.mapping** %4, align 8
  %23 = icmp ne %struct.mapping* %22, null
  br i1 %23, label %24, label %47

24:                                               ; preds = %18
  %25 = load %struct.mapping*, %struct.mapping** %4, align 8
  %26 = getelementptr inbounds %struct.mapping, %struct.mapping* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.mapping*, %struct.mapping** %5, align 8
  %29 = getelementptr inbounds %struct.mapping, %struct.mapping* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  %32 = icmp eq i64 %27, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %24
  %34 = load %struct.mapping*, %struct.mapping** %4, align 8
  %35 = getelementptr inbounds %struct.mapping, %struct.mapping* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.mapping*, %struct.mapping** %5, align 8
  %40 = getelementptr inbounds %struct.mapping, %struct.mapping* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  %45 = icmp eq i64 %38, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %65

47:                                               ; preds = %33, %24, %18
  %48 = load %struct.mapping*, %struct.mapping** %5, align 8
  %49 = getelementptr inbounds %struct.mapping, %struct.mapping* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.mapping*, %struct.mapping** %6, align 8
  %52 = getelementptr inbounds %struct.mapping, %struct.mapping* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %50, %53
  %55 = add nsw i64 %54, 1
  %56 = load %struct.mapping*, %struct.mapping** %6, align 8
  %57 = getelementptr inbounds %struct.mapping, %struct.mapping* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct.mapping*, %struct.mapping** %4, align 8
  store %struct.mapping* %58, %struct.mapping** %5, align 8
  store %struct.mapping* %58, %struct.mapping** %6, align 8
  %59 = load i32*, i32** @map_folded_count, align 8
  %60 = load i32, i32* %2, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %47, %46
  %66 = load %struct.mapping*, %struct.mapping** %4, align 8
  store %struct.mapping* %66, %struct.mapping** %5, align 8
  br label %15

67:                                               ; preds = %15
  ret void
}

declare dso_local %struct.mapping* @TAILQ_FIRST(%struct.mapping_list*) #1

declare dso_local %struct.mapping* @TAILQ_NEXT(%struct.mapping*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
