; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_add_oid.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_add_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ber_element = type { i64, i32, i32* }
%struct.ber_oid = type { i32 }

@BER_TYPE_OBJECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ber_element* @ber_add_oid(%struct.ber_element* %0, %struct.ber_oid* %1) #0 {
  %3 = alloca %struct.ber_element*, align 8
  %4 = alloca %struct.ber_element*, align 8
  %5 = alloca %struct.ber_oid*, align 8
  %6 = alloca %struct.ber_element*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.ber_element* %0, %struct.ber_element** %4, align 8
  store %struct.ber_oid* %1, %struct.ber_oid** %5, align 8
  %9 = load i32, i32* @BER_TYPE_OBJECT, align 4
  %10 = call %struct.ber_element* @ber_get_element(i32 %9)
  store %struct.ber_element* %10, %struct.ber_element** %6, align 8
  %11 = icmp eq %struct.ber_element* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.ber_element* null, %struct.ber_element** %3, align 8
  br label %47

13:                                               ; preds = %2
  %14 = load %struct.ber_oid*, %struct.ber_oid** %5, align 8
  %15 = call i64 @ber_oid2ber(%struct.ber_oid* %14, i32* null, i64 0)
  store i64 %15, i64* %8, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %44

18:                                               ; preds = %13
  %19 = load i64, i64* %8, align 8
  %20 = call i32* @calloc(i32 1, i64 %19)
  store i32* %20, i32** %7, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %44

23:                                               ; preds = %18
  %24 = load i32*, i32** %7, align 8
  %25 = load %struct.ber_element*, %struct.ber_element** %6, align 8
  %26 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %25, i32 0, i32 2
  store i32* %24, i32** %26, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.ber_element*, %struct.ber_element** %6, align 8
  %29 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.ber_element*, %struct.ber_element** %6, align 8
  %31 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %30, i32 0, i32 1
  store i32 1, i32* %31, align 8
  %32 = load %struct.ber_oid*, %struct.ber_oid** %5, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i64 @ber_oid2ber(%struct.ber_oid* %32, i32* %33, i64 %34)
  %36 = load i64, i64* %8, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %23
  br label %44

39:                                               ; preds = %23
  %40 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %41 = load %struct.ber_element*, %struct.ber_element** %6, align 8
  %42 = call i32 @ber_link_elements(%struct.ber_element* %40, %struct.ber_element* %41)
  %43 = load %struct.ber_element*, %struct.ber_element** %6, align 8
  store %struct.ber_element* %43, %struct.ber_element** %3, align 8
  br label %47

44:                                               ; preds = %38, %22, %17
  %45 = load %struct.ber_element*, %struct.ber_element** %6, align 8
  %46 = call i32 @ber_free_elements(%struct.ber_element* %45)
  store %struct.ber_element* null, %struct.ber_element** %3, align 8
  br label %47

47:                                               ; preds = %44, %39, %12
  %48 = load %struct.ber_element*, %struct.ber_element** %3, align 8
  ret %struct.ber_element* %48
}

declare dso_local %struct.ber_element* @ber_get_element(i32) #1

declare dso_local i64 @ber_oid2ber(%struct.ber_oid*, i32*, i64) #1

declare dso_local i32* @calloc(i32, i64) #1

declare dso_local i32 @ber_link_elements(%struct.ber_element*, %struct.ber_element*) #1

declare dso_local i32 @ber_free_elements(%struct.ber_element*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
