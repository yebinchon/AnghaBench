; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec/extr_veriexec_fingerprint.c_mac_veriexec_fingerprint_add_ops.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec/extr_veriexec_fingerprint.c_mac_veriexec_fingerprint_add_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_veriexec_fpops = type { i8*, i64, i64, i32*, i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@fpops_list = common dso_local global i32 0, align 4
@entries = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"MAC/veriexec fingerprint module loaded: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_veriexec_fingerprint_add_ops(%struct.mac_veriexec_fpops* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mac_veriexec_fpops*, align 8
  store %struct.mac_veriexec_fpops* %0, %struct.mac_veriexec_fpops** %3, align 8
  %4 = load %struct.mac_veriexec_fpops*, %struct.mac_veriexec_fpops** %3, align 8
  %5 = getelementptr inbounds %struct.mac_veriexec_fpops, %struct.mac_veriexec_fpops* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %33, label %8

8:                                                ; preds = %1
  %9 = load %struct.mac_veriexec_fpops*, %struct.mac_veriexec_fpops** %3, align 8
  %10 = getelementptr inbounds %struct.mac_veriexec_fpops, %struct.mac_veriexec_fpops* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %33, label %13

13:                                               ; preds = %8
  %14 = load %struct.mac_veriexec_fpops*, %struct.mac_veriexec_fpops** %3, align 8
  %15 = getelementptr inbounds %struct.mac_veriexec_fpops, %struct.mac_veriexec_fpops* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %13
  %19 = load %struct.mac_veriexec_fpops*, %struct.mac_veriexec_fpops** %3, align 8
  %20 = getelementptr inbounds %struct.mac_veriexec_fpops, %struct.mac_veriexec_fpops* %19, i32 0, i32 5
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %18
  %24 = load %struct.mac_veriexec_fpops*, %struct.mac_veriexec_fpops** %3, align 8
  %25 = getelementptr inbounds %struct.mac_veriexec_fpops, %struct.mac_veriexec_fpops* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.mac_veriexec_fpops*, %struct.mac_veriexec_fpops** %3, align 8
  %30 = getelementptr inbounds %struct.mac_veriexec_fpops, %struct.mac_veriexec_fpops* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28, %23, %18, %13, %8, %1
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %2, align 4
  br label %51

35:                                               ; preds = %28
  %36 = load %struct.mac_veriexec_fpops*, %struct.mac_veriexec_fpops** %3, align 8
  %37 = getelementptr inbounds %struct.mac_veriexec_fpops, %struct.mac_veriexec_fpops* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @mac_veriexec_fingerprint_lookup_ops(i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @EEXIST, align 4
  store i32 %42, i32* %2, align 4
  br label %51

43:                                               ; preds = %35
  %44 = load %struct.mac_veriexec_fpops*, %struct.mac_veriexec_fpops** %3, align 8
  %45 = load i32, i32* @entries, align 4
  %46 = call i32 @LIST_INSERT_HEAD(i32* @fpops_list, %struct.mac_veriexec_fpops* %44, i32 %45)
  %47 = load %struct.mac_veriexec_fpops*, %struct.mac_veriexec_fpops** %3, align 8
  %48 = getelementptr inbounds %struct.mac_veriexec_fpops, %struct.mac_veriexec_fpops* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %43, %41, %33
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i64 @mac_veriexec_fingerprint_lookup_ops(i8*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.mac_veriexec_fpops*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
