; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore_dev.c_xs_dev_return_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore_dev.c_xs_dev_return_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xs_dev_data = type { i32 }
%struct.xsd_sockmsg = type { i32, i32, i32, i32 }

@XS_ERROR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Unable to find string for EINVAL errno\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xs_dev_data*, i32, i32, i32)* @xs_dev_return_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xs_dev_return_error(%struct.xs_dev_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.xs_dev_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.xsd_sockmsg, align 4
  %10 = alloca i8*, align 8
  store %struct.xs_dev_data* %0, %struct.xs_dev_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @XS_ERROR, align 4
  %12 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %9, i32 0, i32 3
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %7, align 4
  %14 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %9, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  %16 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %9, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  store i8* null, i8** %10, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i8* @xs_dev_error_to_string(i32 %17)
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = call i8* @xs_dev_error_to_string(i32 %22)
  store i8* %23, i8** %10, align 8
  br label %24

24:                                               ; preds = %21, %4
  %25 = load i8*, i8** %10, align 8
  %26 = icmp ne i8* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @KASSERT(i32 %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %29 = load i8*, i8** %10, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = add nsw i32 %30, 1
  %32 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %9, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = load %struct.xs_dev_data*, %struct.xs_dev_data** %5, align 8
  %34 = getelementptr inbounds %struct.xs_dev_data, %struct.xs_dev_data* %33, i32 0, i32 0
  %35 = call i32 @mtx_lock(i32* %34)
  %36 = load %struct.xs_dev_data*, %struct.xs_dev_data** %5, align 8
  %37 = bitcast %struct.xsd_sockmsg* %9 to i8*
  %38 = call i32 @xs_queue_reply(%struct.xs_dev_data* %36, i8* %37, i32 16)
  %39 = load %struct.xs_dev_data*, %struct.xs_dev_data** %5, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %9, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @xs_queue_reply(%struct.xs_dev_data* %39, i8* %40, i32 %42)
  %44 = load %struct.xs_dev_data*, %struct.xs_dev_data** %5, align 8
  %45 = getelementptr inbounds %struct.xs_dev_data, %struct.xs_dev_data* %44, i32 0, i32 0
  %46 = call i32 @mtx_unlock(i32* %45)
  ret void
}

declare dso_local i8* @xs_dev_error_to_string(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @xs_queue_reply(%struct.xs_dev_data*, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
