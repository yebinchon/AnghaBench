; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_copy_profile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_copy_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.copy_args = type { i32, i32* }
%struct.dn_profile = type { i32 }
%struct.dn_id = type { i32 }

@ED_MAX_SAMPLES_NO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"error have %d need %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.copy_args*, %struct.dn_profile*)* @copy_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_profile(%struct.copy_args* %0, %struct.dn_profile* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.copy_args*, align 8
  %5 = alloca %struct.dn_profile*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.copy_args* %0, %struct.copy_args** %4, align 8
  store %struct.dn_profile* %1, %struct.dn_profile** %5, align 8
  %8 = load %struct.copy_args*, %struct.copy_args** %4, align 8
  %9 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.copy_args*, %struct.copy_args** %4, align 8
  %12 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %10, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @ED_MAX_SAMPLES_NO, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = sub i64 4, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load %struct.dn_profile*, %struct.dn_profile** %5, align 8
  %22 = icmp eq %struct.dn_profile* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %54

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @D(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  store i32 1, i32* %3, align 4
  br label %54

32:                                               ; preds = %24
  %33 = load %struct.copy_args*, %struct.copy_args** %4, align 8
  %34 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dn_profile*, %struct.dn_profile** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @memcpy(i32 %36, %struct.dn_profile* %37, i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.copy_args*, %struct.copy_args** %4, align 8
  %42 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to %struct.dn_id*
  %47 = getelementptr inbounds %struct.dn_id, %struct.dn_id* %46, i32 0, i32 0
  store i32 %40, i32* %47, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.copy_args*, %struct.copy_args** %4, align 8
  %50 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, %48
  store i32 %53, i32* %51, align 4
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %32, %28, %23
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @D(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32, %struct.dn_profile*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
