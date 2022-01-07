; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub_acpi.c_acpi_uhub_upc_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub_acpi.c_acpi_uhub_upc_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"TypeA\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"MiniAB\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Express\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"USB3-A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"USB3-B\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"USB-MicroB\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"USB3-MicroAB\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"USB3-PowerB\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"TypeC-USB2\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"TypeC-Switch\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"TypeC-nonSwitch\00", align 1
@__const.acpi_uhub_upc_type.typelist = private unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0)], align 16
@.str.11 = private unnamed_addr constant [12 x i8] c"Proprietary\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @acpi_uhub_upc_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @acpi_uhub_upc_type(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [11 x i8*], align 16
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = bitcast [11 x i8*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([11 x i8*]* @__const.acpi_uhub_upc_type.typelist to i8*), i64 88, i1 false)
  store i32 11, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, 255
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %21

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 11
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [11 x i8*], [11 x i8*]* %4, i64 0, i64 %15
  %17 = load i8*, i8** %16, align 8
  br label %19

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %18, %13
  %20 = phi i8* [ %17, %13 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), %18 ]
  store i8* %20, i8** %2, align 8
  br label %21

21:                                               ; preds = %19, %9
  %22 = load i8*, i8** %2, align 8
  ret i8* %22
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
