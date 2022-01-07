; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_krb5_mech.c_krb5_insert_seq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_krb5_mech.c_krb5_insert_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_msg_order = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.krb5_msg_order*, i32, i32)* @krb5_insert_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @krb5_insert_seq(%struct.krb5_msg_order* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.krb5_msg_order*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.krb5_msg_order* %0, %struct.krb5_msg_order** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.krb5_msg_order*, %struct.krb5_msg_order** %4, align 8
  %9 = getelementptr inbounds %struct.krb5_msg_order, %struct.krb5_msg_order* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.krb5_msg_order*, %struct.krb5_msg_order** %4, align 8
  %12 = getelementptr inbounds %struct.krb5_msg_order, %struct.krb5_msg_order* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.krb5_msg_order*, %struct.krb5_msg_order** %4, align 8
  %17 = getelementptr inbounds %struct.krb5_msg_order, %struct.krb5_msg_order* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 8
  br label %20

20:                                               ; preds = %15, %3
  %21 = load %struct.krb5_msg_order*, %struct.krb5_msg_order** %4, align 8
  %22 = getelementptr inbounds %struct.krb5_msg_order, %struct.krb5_msg_order* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %44, %20
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %25
  %30 = load %struct.krb5_msg_order*, %struct.krb5_msg_order** %4, align 8
  %31 = getelementptr inbounds %struct.krb5_msg_order, %struct.krb5_msg_order* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.krb5_msg_order*, %struct.krb5_msg_order** %4, align 8
  %39 = getelementptr inbounds %struct.krb5_msg_order, %struct.krb5_msg_order* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %37, i32* %43, align 4
  br label %44

44:                                               ; preds = %29
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %7, align 4
  br label %25

47:                                               ; preds = %25
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.krb5_msg_order*, %struct.krb5_msg_order** %4, align 8
  %50 = getelementptr inbounds %struct.krb5_msg_order, %struct.krb5_msg_order* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %48, i32* %54, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
