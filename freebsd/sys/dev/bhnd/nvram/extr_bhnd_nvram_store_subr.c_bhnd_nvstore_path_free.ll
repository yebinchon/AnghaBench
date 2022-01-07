; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_store_subr.c_bhnd_nvstore_path_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_store_subr.c_bhnd_nvstore_path_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvstore_path = type { %struct.bhnd_nvstore_path*, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bhnd_nvstore_path_free(%struct.bhnd_nvstore_path* %0) #0 {
  %2 = alloca %struct.bhnd_nvstore_path*, align 8
  store %struct.bhnd_nvstore_path* %0, %struct.bhnd_nvstore_path** %2, align 8
  %3 = load %struct.bhnd_nvstore_path*, %struct.bhnd_nvstore_path** %2, align 8
  %4 = getelementptr inbounds %struct.bhnd_nvstore_path, %struct.bhnd_nvstore_path* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.bhnd_nvstore_path*, %struct.bhnd_nvstore_path** %2, align 8
  %9 = getelementptr inbounds %struct.bhnd_nvstore_path, %struct.bhnd_nvstore_path* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @bhnd_nvstore_index_free(i32* %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.bhnd_nvstore_path*, %struct.bhnd_nvstore_path** %2, align 8
  %14 = getelementptr inbounds %struct.bhnd_nvstore_path, %struct.bhnd_nvstore_path* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @bhnd_nvram_plist_release(i32 %15)
  %17 = load %struct.bhnd_nvstore_path*, %struct.bhnd_nvstore_path** %2, align 8
  %18 = getelementptr inbounds %struct.bhnd_nvstore_path, %struct.bhnd_nvstore_path* %17, i32 0, i32 0
  %19 = load %struct.bhnd_nvstore_path*, %struct.bhnd_nvstore_path** %18, align 8
  %20 = call i32 @bhnd_nv_free(%struct.bhnd_nvstore_path* %19)
  %21 = load %struct.bhnd_nvstore_path*, %struct.bhnd_nvstore_path** %2, align 8
  %22 = call i32 @bhnd_nv_free(%struct.bhnd_nvstore_path* %21)
  ret void
}

declare dso_local i32 @bhnd_nvstore_index_free(i32*) #1

declare dso_local i32 @bhnd_nvram_plist_release(i32) #1

declare dso_local i32 @bhnd_nv_free(%struct.bhnd_nvstore_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
