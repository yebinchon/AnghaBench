; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_partition/extr_mac_partition.c_partition_cred_externalize_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_partition/extr_mac_partition.c_partition_cred_externalize_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.label = type { i32 }
%struct.sbuf = type { i32 }

@MAC_PARTITION_LABEL_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%jd\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.label*, i8*, %struct.sbuf*, i32*)* @partition_cred_externalize_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @partition_cred_externalize_label(%struct.label* %0, i8* %1, %struct.sbuf* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.label*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sbuf*, align 8
  %9 = alloca i32*, align 8
  store %struct.label* %0, %struct.label** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.sbuf* %2, %struct.sbuf** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32, i32* @MAC_PARTITION_LABEL_NAME, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = call i64 @strcmp(i32 %10, i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %39

15:                                               ; preds = %4
  %16 = load i32*, i32** %9, align 8
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.label*, %struct.label** %6, align 8
  %20 = icmp ne %struct.label* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %23 = load %struct.label*, %struct.label** %6, align 8
  %24 = call i64 @SLOT(%struct.label* %23)
  %25 = trunc i64 %24 to i32
  %26 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %5, align 4
  br label %39

30:                                               ; preds = %21
  br label %38

31:                                               ; preds = %15
  %32 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %33 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %5, align 4
  br label %39

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %30
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %35, %28, %14
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

declare dso_local i64 @SLOT(%struct.label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
