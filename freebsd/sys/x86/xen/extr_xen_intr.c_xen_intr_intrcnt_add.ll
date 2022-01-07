; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_intr_intrcnt_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_intr_intrcnt_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_intr_pcpu_data = type { i32* }

@MAXCOMLEN = common dso_local global i32 0, align 4
@xen_intr_pcpu = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"cpu%d:xen\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @xen_intr_intrcnt_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_intr_intrcnt_add(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.xen_intr_pcpu_data*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @MAXCOMLEN, align 4
  %8 = add nsw i32 %7, 1
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @xen_intr_pcpu, align 4
  %14 = call %struct.xen_intr_pcpu_data* @DPCPU_ID_PTR(i32 %12, i32 %13)
  store %struct.xen_intr_pcpu_data* %14, %struct.xen_intr_pcpu_data** %5, align 8
  %15 = load %struct.xen_intr_pcpu_data*, %struct.xen_intr_pcpu_data** %5, align 8
  %16 = getelementptr inbounds %struct.xen_intr_pcpu_data, %struct.xen_intr_pcpu_data* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %27

20:                                               ; preds = %1
  %21 = trunc i64 %9 to i32
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @snprintf(i8* %11, i32 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.xen_intr_pcpu_data*, %struct.xen_intr_pcpu_data** %5, align 8
  %25 = getelementptr inbounds %struct.xen_intr_pcpu_data, %struct.xen_intr_pcpu_data* %24, i32 0, i32 0
  %26 = call i32 @intrcnt_add(i8* %11, i32** %25)
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %20, %19
  %28 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %28)
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %31 [
    i32 0, label %30
    i32 1, label %30
  ]

30:                                               ; preds = %27, %27
  ret void

31:                                               ; preds = %27
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.xen_intr_pcpu_data* @DPCPU_ID_PTR(i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @intrcnt_add(i8*, i32**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
