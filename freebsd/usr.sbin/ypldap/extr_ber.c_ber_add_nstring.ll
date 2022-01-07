; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_add_nstring.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_add_nstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ber_element = type { i8*, i64, i32 }

@BER_TYPE_OCTETSTRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ber_element* @ber_add_nstring(%struct.ber_element* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.ber_element*, align 8
  %5 = alloca %struct.ber_element*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ber_element*, align 8
  %9 = alloca i8*, align 8
  store %struct.ber_element* %0, %struct.ber_element** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = call i8* @calloc(i32 1, i64 %10)
  store i8* %11, i8** %9, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store %struct.ber_element* null, %struct.ber_element** %4, align 8
  br label %38

14:                                               ; preds = %3
  %15 = load i32, i32* @BER_TYPE_OCTETSTRING, align 4
  %16 = call %struct.ber_element* @ber_get_element(i32 %15)
  store %struct.ber_element* %16, %struct.ber_element** %8, align 8
  %17 = icmp eq %struct.ber_element* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @free(i8* %19)
  store %struct.ber_element* null, %struct.ber_element** %4, align 8
  br label %38

21:                                               ; preds = %14
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @bcopy(i8* %22, i8* %23, i64 %24)
  %26 = load i8*, i8** %9, align 8
  %27 = load %struct.ber_element*, %struct.ber_element** %8, align 8
  %28 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.ber_element*, %struct.ber_element** %8, align 8
  %31 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.ber_element*, %struct.ber_element** %8, align 8
  %33 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %32, i32 0, i32 2
  store i32 1, i32* %33, align 8
  %34 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %35 = load %struct.ber_element*, %struct.ber_element** %8, align 8
  %36 = call i32 @ber_link_elements(%struct.ber_element* %34, %struct.ber_element* %35)
  %37 = load %struct.ber_element*, %struct.ber_element** %8, align 8
  store %struct.ber_element* %37, %struct.ber_element** %4, align 8
  br label %38

38:                                               ; preds = %21, %18, %13
  %39 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  ret %struct.ber_element* %39
}

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local %struct.ber_element* @ber_get_element(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

declare dso_local i32 @ber_link_elements(%struct.ber_element*, %struct.ber_element*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
