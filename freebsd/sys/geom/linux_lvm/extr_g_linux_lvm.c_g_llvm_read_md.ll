; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/linux_lvm/extr_g_linux_lvm.c_g_llvm_read_md.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/linux_lvm/extr_g_linux_lvm.c_g_llvm_read_md.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i32, i32 }
%struct.g_llvm_metadata = type { i32, i32 }
%struct.g_llvm_label = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Cannot read metadata from %s (error=%d)\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"reading LVM2 config @ %s:%ju\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Cannot read LVM2 config from %s (error=%d)\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"LVM config:\0A%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_llvm_read_md(%struct.g_consumer* %0, %struct.g_llvm_metadata* %1, %struct.g_llvm_label* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_consumer*, align 8
  %6 = alloca %struct.g_llvm_metadata*, align 8
  %7 = alloca %struct.g_llvm_label*, align 8
  %8 = alloca %struct.g_provider*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.g_consumer* %0, %struct.g_consumer** %5, align 8
  store %struct.g_llvm_metadata* %1, %struct.g_llvm_metadata** %6, align 8
  store %struct.g_llvm_label* %2, %struct.g_llvm_label** %7, align 8
  %12 = call i32 (...) @g_topology_assert()
  %13 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %14 = call i32 @g_access(%struct.g_consumer* %13, i32 1, i32 0, i32 0)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %4, align 4
  br label %142

19:                                               ; preds = %3
  %20 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %21 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %20, i32 0, i32 0
  %22 = load %struct.g_provider*, %struct.g_provider** %21, align 8
  store %struct.g_provider* %22, %struct.g_provider** %8, align 8
  %23 = call i32 (...) @g_topology_unlock()
  %24 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %25 = load %struct.g_llvm_label*, %struct.g_llvm_label** %7, align 8
  %26 = getelementptr inbounds %struct.g_llvm_label, %struct.g_llvm_label* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %29 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @g_read_data(%struct.g_consumer* %24, i32 %27, i32 %30, i32* %10)
  store i8* %31, i8** %9, align 8
  %32 = call i32 (...) @g_topology_lock()
  %33 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %34 = call i32 @g_access(%struct.g_consumer* %33, i32 -1, i32 0, i32 0)
  %35 = load i8*, i8** %9, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %19
  %38 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %39 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %38, i32 0, i32 0
  %40 = load %struct.g_provider*, %struct.g_provider** %39, align 8
  %41 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = load i32, i32* %10, align 4
  %46 = call i32 (i32, i8*, i8*, ...) @G_LLVM_DEBUG(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %44, i32 %45)
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %4, align 4
  br label %142

48:                                               ; preds = %19
  %49 = load i8*, i8** %9, align 8
  %50 = load %struct.g_llvm_metadata*, %struct.g_llvm_metadata** %6, align 8
  %51 = load %struct.g_llvm_label*, %struct.g_llvm_label** %7, align 8
  %52 = call i32 @llvm_md_decode(i8* %49, %struct.g_llvm_metadata* %50, %struct.g_llvm_label* %51)
  store i32 %52, i32* %10, align 4
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @g_free(i8* %53)
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %142

59:                                               ; preds = %48
  %60 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %61 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i8*
  %65 = load %struct.g_llvm_label*, %struct.g_llvm_label** %7, align 8
  %66 = getelementptr inbounds %struct.g_llvm_label, %struct.g_llvm_label* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.g_llvm_metadata*, %struct.g_llvm_metadata** %6, align 8
  %69 = getelementptr inbounds %struct.g_llvm_metadata, %struct.g_llvm_metadata* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %67, %70
  %72 = call i32 (i32, i8*, i8*, ...) @G_LLVM_DEBUG(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %64, i32 %71)
  %73 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %74 = call i32 @g_access(%struct.g_consumer* %73, i32 1, i32 0, i32 0)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %59
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %4, align 4
  br label %142

79:                                               ; preds = %59
  %80 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %81 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %80, i32 0, i32 0
  %82 = load %struct.g_provider*, %struct.g_provider** %81, align 8
  store %struct.g_provider* %82, %struct.g_provider** %8, align 8
  %83 = call i32 (...) @g_topology_unlock()
  %84 = load %struct.g_llvm_metadata*, %struct.g_llvm_metadata** %6, align 8
  %85 = getelementptr inbounds %struct.g_llvm_metadata, %struct.g_llvm_metadata* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %88 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.g_llvm_metadata*, %struct.g_llvm_metadata** %6, align 8
  %91 = getelementptr inbounds %struct.g_llvm_metadata, %struct.g_llvm_metadata* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %94 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = srem i32 %92, %95
  %97 = sub nsw i32 %89, %96
  %98 = add nsw i32 %86, %97
  store i32 %98, i32* %11, align 4
  %99 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %100 = load %struct.g_llvm_label*, %struct.g_llvm_label** %7, align 8
  %101 = getelementptr inbounds %struct.g_llvm_label, %struct.g_llvm_label* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.g_llvm_metadata*, %struct.g_llvm_metadata** %6, align 8
  %104 = getelementptr inbounds %struct.g_llvm_metadata, %struct.g_llvm_metadata* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %102, %105
  %107 = load i32, i32* %11, align 4
  %108 = call i8* @g_read_data(%struct.g_consumer* %99, i32 %106, i32 %107, i32* %10)
  store i8* %108, i8** %9, align 8
  %109 = call i32 (...) @g_topology_lock()
  %110 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %111 = call i32 @g_access(%struct.g_consumer* %110, i32 -1, i32 0, i32 0)
  %112 = load i8*, i8** %9, align 8
  %113 = icmp eq i8* %112, null
  br i1 %113, label %114, label %123

114:                                              ; preds = %79
  %115 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %116 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = inttoptr i64 %118 to i8*
  %120 = load i32, i32* %10, align 4
  %121 = call i32 (i32, i8*, i8*, ...) @G_LLVM_DEBUG(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %119, i32 %120)
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %4, align 4
  br label %142

123:                                              ; preds = %79
  %124 = load i8*, i8** %9, align 8
  %125 = load %struct.g_llvm_metadata*, %struct.g_llvm_metadata** %6, align 8
  %126 = getelementptr inbounds %struct.g_llvm_metadata, %struct.g_llvm_metadata* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %124, i64 %128
  store i8 0, i8* %129, align 1
  %130 = load i8*, i8** %9, align 8
  %131 = call i32 (i32, i8*, i8*, ...) @G_LLVM_DEBUG(i32 10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %130)
  %132 = load i8*, i8** %9, align 8
  %133 = load %struct.g_llvm_metadata*, %struct.g_llvm_metadata** %6, align 8
  %134 = getelementptr inbounds %struct.g_llvm_metadata, %struct.g_llvm_metadata* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = load %struct.g_llvm_metadata*, %struct.g_llvm_metadata** %6, align 8
  %138 = call i32 @llvm_textconf_decode(i8* %132, i64 %136, %struct.g_llvm_metadata* %137)
  store i32 %138, i32* %10, align 4
  %139 = load i8*, i8** %9, align 8
  %140 = call i32 @g_free(i8* %139)
  %141 = load i32, i32* %10, align 4
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %123, %114, %77, %57, %37, %17
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @g_access(%struct.g_consumer*, i32, i32, i32) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i8* @g_read_data(%struct.g_consumer*, i32, i32, i32*) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @G_LLVM_DEBUG(i32, i8*, i8*, ...) #1

declare dso_local i32 @llvm_md_decode(i8*, %struct.g_llvm_metadata*, %struct.g_llvm_label*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @llvm_textconf_decode(i8*, i64, %struct.g_llvm_metadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
