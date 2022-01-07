; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl_soft.c_icl_soupcall_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl_soft.c_icl_soupcall_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.icl_conn = type { i32 }

@SU_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i8*, i32)* @icl_soupcall_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icl_soupcall_receive(%struct.socket* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.icl_conn*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.socket*, %struct.socket** %5, align 8
  %10 = call i32 @soreadable(%struct.socket* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @SU_OK, align 4
  store i32 %13, i32* %4, align 4
  br label %21

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.icl_conn*
  store %struct.icl_conn* %16, %struct.icl_conn** %8, align 8
  %17 = load %struct.icl_conn*, %struct.icl_conn** %8, align 8
  %18 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %17, i32 0, i32 0
  %19 = call i32 @cv_signal(i32* %18)
  %20 = load i32, i32* @SU_OK, align 4
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %14, %12
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local i32 @soreadable(%struct.socket*) #1

declare dso_local i32 @cv_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
