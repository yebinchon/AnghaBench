; ModuleID = '/home/carl/AnghaBench/git/extr_checkout.c_check_tracking_name.c'
source_filename = "/home/carl/AnghaBench/git/extr_checkout.c_check_tracking_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.remote = type { i32 }
%struct.tracking_name_data = type { i32, %struct.object_id*, i32, i32, i64, i32, i32 }
%struct.object_id = type { i32 }
%struct.refspec_item = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.remote*, i8*)* @check_tracking_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_tracking_name(%struct.remote* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.remote*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tracking_name_data*, align 8
  %7 = alloca %struct.refspec_item, align 4
  %8 = alloca %struct.object_id*, align 8
  store %struct.remote* %0, %struct.remote** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.tracking_name_data*
  store %struct.tracking_name_data* %10, %struct.tracking_name_data** %6, align 8
  %11 = call i32 @memset(%struct.refspec_item* %7, i32 0, i32 8)
  %12 = load %struct.tracking_name_data*, %struct.tracking_name_data** %6, align 8
  %13 = getelementptr inbounds %struct.tracking_name_data, %struct.tracking_name_data* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %7, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load %struct.remote*, %struct.remote** %4, align 8
  %17 = call i64 @remote_find_tracking(%struct.remote* %16, %struct.refspec_item* %7)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %7, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.tracking_name_data*, %struct.tracking_name_data** %6, align 8
  %23 = getelementptr inbounds %struct.tracking_name_data, %struct.tracking_name_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @get_oid(i32 %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19, %2
  %28 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %7, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @free(i32 %29)
  store i32 0, i32* %3, align 4
  br label %78

31:                                               ; preds = %19
  %32 = load %struct.tracking_name_data*, %struct.tracking_name_data** %6, align 8
  %33 = getelementptr inbounds %struct.tracking_name_data, %struct.tracking_name_data* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = load %struct.tracking_name_data*, %struct.tracking_name_data** %6, align 8
  %37 = getelementptr inbounds %struct.tracking_name_data, %struct.tracking_name_data* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %31
  %41 = load %struct.remote*, %struct.remote** %4, align 8
  %42 = getelementptr inbounds %struct.remote, %struct.remote* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.tracking_name_data*, %struct.tracking_name_data** %6, align 8
  %45 = getelementptr inbounds %struct.tracking_name_data, %struct.tracking_name_data* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @strcmp(i32 %43, i64 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %64, label %49

49:                                               ; preds = %40
  %50 = call %struct.object_id* @xmalloc(i32 4)
  store %struct.object_id* %50, %struct.object_id** %8, align 8
  %51 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %7, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @xstrdup(i32 %52)
  %54 = load %struct.tracking_name_data*, %struct.tracking_name_data** %6, align 8
  %55 = getelementptr inbounds %struct.tracking_name_data, %struct.tracking_name_data* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load %struct.object_id*, %struct.object_id** %8, align 8
  %57 = load %struct.tracking_name_data*, %struct.tracking_name_data** %6, align 8
  %58 = getelementptr inbounds %struct.tracking_name_data, %struct.tracking_name_data* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @oidcpy(%struct.object_id* %56, i32 %59)
  %61 = load %struct.object_id*, %struct.object_id** %8, align 8
  %62 = load %struct.tracking_name_data*, %struct.tracking_name_data** %6, align 8
  %63 = getelementptr inbounds %struct.tracking_name_data, %struct.tracking_name_data* %62, i32 0, i32 1
  store %struct.object_id* %61, %struct.object_id** %63, align 8
  br label %64

64:                                               ; preds = %49, %40, %31
  %65 = load %struct.tracking_name_data*, %struct.tracking_name_data** %6, align 8
  %66 = getelementptr inbounds %struct.tracking_name_data, %struct.tracking_name_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %7, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @free(i32 %71)
  store i32 0, i32* %3, align 4
  br label %78

73:                                               ; preds = %64
  %74 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %7, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.tracking_name_data*, %struct.tracking_name_data** %6, align 8
  %77 = getelementptr inbounds %struct.tracking_name_data, %struct.tracking_name_data* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %73, %69, %27
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @memset(%struct.refspec_item*, i32, i32) #1

declare dso_local i64 @remote_find_tracking(%struct.remote*, %struct.refspec_item*) #1

declare dso_local i64 @get_oid(i32, i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @strcmp(i32, i64) #1

declare dso_local %struct.object_id* @xmalloc(i32) #1

declare dso_local i32 @xstrdup(i32) #1

declare dso_local i32 @oidcpy(%struct.object_id*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
