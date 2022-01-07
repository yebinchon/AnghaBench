; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_priv_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_priv_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.mac_biba = type { i32 }

@biba_enabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, i32)* @biba_priv_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @biba_priv_check(%struct.ucred* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucred*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mac_biba*, align 8
  %7 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @biba_enabled, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %15 [
    i32 185, label %13
    i32 182, label %13
    i32 205, label %13
    i32 204, label %13
    i32 203, label %13
    i32 194, label %13
    i32 201, label %13
    i32 200, label %13
    i32 202, label %13
    i32 199, label %13
    i32 195, label %13
    i32 198, label %13
    i32 196, label %13
    i32 197, label %13
    i32 169, label %13
    i32 168, label %13
    i32 193, label %14
    i32 192, label %14
    i32 191, label %14
    i32 186, label %14
    i32 184, label %14
    i32 178, label %14
    i32 177, label %14
    i32 176, label %14
    i32 188, label %14
    i32 187, label %14
    i32 190, label %14
    i32 189, label %14
    i32 183, label %14
    i32 175, label %14
    i32 170, label %14
    i32 174, label %14
    i32 171, label %14
    i32 173, label %14
    i32 172, label %14
    i32 167, label %14
    i32 166, label %14
    i32 165, label %14
    i32 164, label %14
    i32 163, label %14
    i32 162, label %14
    i32 161, label %14
    i32 159, label %14
    i32 160, label %14
    i32 139, label %14
    i32 133, label %14
    i32 158, label %14
    i32 153, label %14
    i32 145, label %14
    i32 157, label %14
    i32 156, label %14
    i32 155, label %14
    i32 138, label %14
    i32 154, label %14
    i32 152, label %14
    i32 151, label %14
    i32 150, label %14
    i32 149, label %14
    i32 148, label %14
    i32 147, label %14
    i32 146, label %14
    i32 144, label %14
    i32 142, label %14
    i32 141, label %14
    i32 140, label %14
    i32 143, label %14
    i32 137, label %14
    i32 136, label %14
    i32 135, label %14
    i32 134, label %14
    i32 132, label %14
    i32 131, label %14
    i32 130, label %14
    i32 129, label %14
    i32 128, label %14
    i32 180, label %14
    i32 181, label %14
    i32 179, label %14
  ]

13:                                               ; preds = %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11
  br label %27

14:                                               ; preds = %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11
  br label %27

15:                                               ; preds = %11
  %16 = load %struct.ucred*, %struct.ucred** %4, align 8
  %17 = getelementptr inbounds %struct.ucred, %struct.ucred* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.mac_biba* @SLOT(i32 %18)
  store %struct.mac_biba* %19, %struct.mac_biba** %6, align 8
  %20 = load %struct.mac_biba*, %struct.mac_biba** %6, align 8
  %21 = call i32 @biba_subject_privileged(%struct.mac_biba* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %28

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26, %14, %13
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %24, %10
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.mac_biba* @SLOT(i32) #1

declare dso_local i32 @biba_subject_privileged(%struct.mac_biba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
