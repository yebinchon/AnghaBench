; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_copy_obj_q.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_copy_obj_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_id = type { i64, i64 }

@DN_QUEUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"ERROR type %d %s %d have %d need %d\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"type %d %s %d len %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i8*, i8*, i32)* @copy_obj_q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_obj_q(i8** %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dn_id*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.dn_id*
  store %struct.dn_id* %16, %struct.dn_id** %12, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i8**, i8*** %7, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = ptrtoint i8* %17 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %13, align 4
  store i32 4, i32* %14, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %38, label %27

27:                                               ; preds = %5
  %28 = load %struct.dn_id*, %struct.dn_id** %12, align 8
  %29 = getelementptr inbounds %struct.dn_id, %struct.dn_id* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = load %struct.dn_id*, %struct.dn_id** %12, align 8
  %34 = getelementptr inbounds %struct.dn_id, %struct.dn_id* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DN_QUEUE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %32, %27, %5
  %39 = load %struct.dn_id*, %struct.dn_id** %12, align 8
  %40 = getelementptr inbounds %struct.dn_id, %struct.dn_id* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @D(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %41, i8* %42, i32 %43, i32 %44, i32 %45)
  store i32 1, i32* %6, align 4
  br label %71

47:                                               ; preds = %32
  %48 = load %struct.dn_id*, %struct.dn_id** %12, align 8
  %49 = getelementptr inbounds %struct.dn_id, %struct.dn_id* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @ND(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %50, i8* %51, i32 %52, i32 %53)
  %55 = load i8**, i8*** %7, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @memcpy(i8* %56, i8* %57, i32 %58)
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = load i8**, i8*** %7, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = bitcast i8* %63 to %struct.dn_id*
  %65 = getelementptr inbounds %struct.dn_id, %struct.dn_id* %64, i32 0, i32 0
  store i64 %61, i64* %65, align 8
  %66 = load i32, i32* %14, align 4
  %67 = load i8**, i8*** %7, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = sext i32 %66 to i64
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8* %70, i8** %67, align 8
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %47, %38
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i32 @D(i8*, i64, i8*, i32, i32, i32) #1

declare dso_local i32 @ND(i8*, i64, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
