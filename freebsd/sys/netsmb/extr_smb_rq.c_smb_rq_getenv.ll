; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_rq.c_smb_rq_getenv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_rq.c_smb_rq_getenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_connobj = type { i32, %struct.smb_connobj* }
%struct.smb_vc = type { i32 }
%struct.smb_share = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"zombie VC %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"zombie share %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"invalid layer %d passed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_connobj*, %struct.smb_vc**, %struct.smb_share**)* @smb_rq_getenv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_rq_getenv(%struct.smb_connobj* %0, %struct.smb_vc** %1, %struct.smb_share** %2) #0 {
  %4 = alloca %struct.smb_connobj*, align 8
  %5 = alloca %struct.smb_vc**, align 8
  %6 = alloca %struct.smb_share**, align 8
  %7 = alloca %struct.smb_vc*, align 8
  %8 = alloca %struct.smb_share*, align 8
  %9 = alloca %struct.smb_connobj*, align 8
  %10 = alloca i32, align 4
  store %struct.smb_connobj* %0, %struct.smb_connobj** %4, align 8
  store %struct.smb_vc** %1, %struct.smb_vc*** %5, align 8
  store %struct.smb_share** %2, %struct.smb_share*** %6, align 8
  store %struct.smb_vc* null, %struct.smb_vc** %7, align 8
  store %struct.smb_share* null, %struct.smb_share** %8, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.smb_connobj*, %struct.smb_connobj** %4, align 8
  %12 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %49 [
    i32 128, label %14
    i32 129, label %28
  ]

14:                                               ; preds = %3
  %15 = load %struct.smb_connobj*, %struct.smb_connobj** %4, align 8
  %16 = call %struct.smb_vc* @CPTOVC(%struct.smb_connobj* %15)
  store %struct.smb_vc* %16, %struct.smb_vc** %7, align 8
  %17 = load %struct.smb_connobj*, %struct.smb_connobj** %4, align 8
  %18 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %17, i32 0, i32 1
  %19 = load %struct.smb_connobj*, %struct.smb_connobj** %18, align 8
  %20 = icmp eq %struct.smb_connobj* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = load %struct.smb_vc*, %struct.smb_vc** %7, align 8
  %23 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @SMBERROR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %10, align 4
  br label %55

27:                                               ; preds = %14
  br label %55

28:                                               ; preds = %3
  %29 = load %struct.smb_connobj*, %struct.smb_connobj** %4, align 8
  %30 = call %struct.smb_share* @CPTOSS(%struct.smb_connobj* %29)
  store %struct.smb_share* %30, %struct.smb_share** %8, align 8
  %31 = load %struct.smb_connobj*, %struct.smb_connobj** %4, align 8
  %32 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %31, i32 0, i32 1
  %33 = load %struct.smb_connobj*, %struct.smb_connobj** %32, align 8
  store %struct.smb_connobj* %33, %struct.smb_connobj** %9, align 8
  %34 = load %struct.smb_connobj*, %struct.smb_connobj** %9, align 8
  %35 = icmp eq %struct.smb_connobj* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load %struct.smb_share*, %struct.smb_share** %8, align 8
  %38 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @SMBERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %10, align 4
  br label %55

42:                                               ; preds = %28
  %43 = load %struct.smb_connobj*, %struct.smb_connobj** %9, align 8
  %44 = call i32 @smb_rq_getenv(%struct.smb_connobj* %43, %struct.smb_vc** %7, %struct.smb_share** null)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %55

48:                                               ; preds = %42
  br label %55

49:                                               ; preds = %3
  %50 = load %struct.smb_connobj*, %struct.smb_connobj** %4, align 8
  %51 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @SMBERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %49, %48, %47, %36, %27, %21
  %56 = load %struct.smb_vc**, %struct.smb_vc*** %5, align 8
  %57 = icmp ne %struct.smb_vc** %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load %struct.smb_vc*, %struct.smb_vc** %7, align 8
  %60 = load %struct.smb_vc**, %struct.smb_vc*** %5, align 8
  store %struct.smb_vc* %59, %struct.smb_vc** %60, align 8
  br label %61

61:                                               ; preds = %58, %55
  %62 = load %struct.smb_share**, %struct.smb_share*** %6, align 8
  %63 = icmp ne %struct.smb_share** %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load %struct.smb_share*, %struct.smb_share** %8, align 8
  %66 = load %struct.smb_share**, %struct.smb_share*** %6, align 8
  store %struct.smb_share* %65, %struct.smb_share** %66, align 8
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32, i32* %10, align 4
  ret i32 %68
}

declare dso_local %struct.smb_vc* @CPTOVC(%struct.smb_connobj*) #1

declare dso_local i32 @SMBERROR(i8*, i32) #1

declare dso_local %struct.smb_share* @CPTOSS(%struct.smb_connobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
