; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_plist.c_bhnd_nvram_plist_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_plist.c_bhnd_nvram_plist_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32 }

@pl_link = common dso_local global i32 0, align 4
@pl_hash_link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"entry count over-release\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bhnd_nvram_plist_remove(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call %struct.TYPE_9__* @bhnd_nvram_plist_get_entry(%struct.TYPE_10__* %6, i8* %7)
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %5, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %10 = icmp eq %struct.TYPE_9__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %37

12:                                               ; preds = %2
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = load i32, i32* @pl_link, align 4
  %17 = call i32 @TAILQ_REMOVE(i32* %14, %struct.TYPE_9__* %15, i32 %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = load i32, i32* @pl_hash_link, align 4
  %20 = call i32 @LIST_REMOVE(%struct.TYPE_9__* %18, i32 %19)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @bhnd_nvram_prop_release(i32 %23)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = call i32 @bhnd_nv_free(%struct.TYPE_9__* %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @BHND_NV_ASSERT(i32 %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, i64* %34, align 8
  br label %37

37:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.TYPE_9__* @bhnd_nvram_plist_get_entry(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @bhnd_nvram_prop_release(i32) #1

declare dso_local i32 @bhnd_nv_free(%struct.TYPE_9__*) #1

declare dso_local i32 @BHND_NV_ASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
