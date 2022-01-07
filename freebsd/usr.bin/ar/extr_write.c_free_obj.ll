; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ar/extr_write.c_free_obj.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ar/extr_write.c_free_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdar = type { i32 }
%struct.ar_obj = type { i32, %struct.ar_obj*, i32, %struct.ar_obj* }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"can't munmap file: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bsdar*, %struct.ar_obj*)* @free_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_obj(%struct.bsdar* %0, %struct.ar_obj* %1) #0 {
  %3 = alloca %struct.bsdar*, align 8
  %4 = alloca %struct.ar_obj*, align 8
  store %struct.bsdar* %0, %struct.bsdar** %3, align 8
  store %struct.ar_obj* %1, %struct.ar_obj** %4, align 8
  %5 = load %struct.ar_obj*, %struct.ar_obj** %4, align 8
  %6 = getelementptr inbounds %struct.ar_obj, %struct.ar_obj* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.ar_obj*, %struct.ar_obj** %4, align 8
  %11 = getelementptr inbounds %struct.ar_obj, %struct.ar_obj* %10, i32 0, i32 3
  %12 = load %struct.ar_obj*, %struct.ar_obj** %11, align 8
  %13 = call i32 @free(%struct.ar_obj* %12)
  br label %36

14:                                               ; preds = %2
  %15 = load %struct.ar_obj*, %struct.ar_obj** %4, align 8
  %16 = getelementptr inbounds %struct.ar_obj, %struct.ar_obj* %15, i32 0, i32 3
  %17 = load %struct.ar_obj*, %struct.ar_obj** %16, align 8
  %18 = icmp ne %struct.ar_obj* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  %20 = load %struct.ar_obj*, %struct.ar_obj** %4, align 8
  %21 = getelementptr inbounds %struct.ar_obj, %struct.ar_obj* %20, i32 0, i32 3
  %22 = load %struct.ar_obj*, %struct.ar_obj** %21, align 8
  %23 = load %struct.ar_obj*, %struct.ar_obj** %4, align 8
  %24 = getelementptr inbounds %struct.ar_obj, %struct.ar_obj* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @munmap(%struct.ar_obj* %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %30 = load i32, i32* @errno, align 4
  %31 = load %struct.ar_obj*, %struct.ar_obj** %4, align 8
  %32 = getelementptr inbounds %struct.ar_obj, %struct.ar_obj* %31, i32 0, i32 1
  %33 = load %struct.ar_obj*, %struct.ar_obj** %32, align 8
  %34 = call i32 @bsdar_warnc(%struct.bsdar* %29, i32 %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.ar_obj* %33)
  br label %35

35:                                               ; preds = %28, %19, %14
  br label %36

36:                                               ; preds = %35, %9
  %37 = load %struct.ar_obj*, %struct.ar_obj** %4, align 8
  %38 = getelementptr inbounds %struct.ar_obj, %struct.ar_obj* %37, i32 0, i32 1
  %39 = load %struct.ar_obj*, %struct.ar_obj** %38, align 8
  %40 = call i32 @free(%struct.ar_obj* %39)
  %41 = load %struct.ar_obj*, %struct.ar_obj** %4, align 8
  %42 = call i32 @free(%struct.ar_obj* %41)
  ret void
}

declare dso_local i32 @free(%struct.ar_obj*) #1

declare dso_local i64 @munmap(%struct.ar_obj*, i32) #1

declare dso_local i32 @bsdar_warnc(%struct.bsdar*, i32, i8*, %struct.ar_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
