; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_rq.c_smb_t2_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_rq.c_smb_t2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_t2rq = type { i32, i32, i32, %struct.smb_cred*, i32*, i32*, %struct.smb_connobj* }
%struct.smb_connobj = type { i32 }
%struct.smb_cred = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_t2_init(%struct.smb_t2rq* %0, %struct.smb_connobj* %1, i32 %2, %struct.smb_cred* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.smb_t2rq*, align 8
  %7 = alloca %struct.smb_connobj*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.smb_cred*, align 8
  %10 = alloca i32, align 4
  store %struct.smb_t2rq* %0, %struct.smb_t2rq** %6, align 8
  store %struct.smb_connobj* %1, %struct.smb_connobj** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.smb_cred* %3, %struct.smb_cred** %9, align 8
  %11 = load %struct.smb_t2rq*, %struct.smb_t2rq** %6, align 8
  %12 = call i32 @bzero(%struct.smb_t2rq* %11, i32 48)
  %13 = load %struct.smb_connobj*, %struct.smb_connobj** %7, align 8
  %14 = load %struct.smb_t2rq*, %struct.smb_t2rq** %6, align 8
  %15 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %14, i32 0, i32 6
  store %struct.smb_connobj* %13, %struct.smb_connobj** %15, align 8
  %16 = load %struct.smb_t2rq*, %struct.smb_t2rq** %6, align 8
  %17 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.smb_t2rq*, %struct.smb_t2rq** %6, align 8
  %19 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.smb_t2rq*, %struct.smb_t2rq** %6, align 8
  %22 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %21, i32 0, i32 5
  store i32* %20, i32** %22, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.smb_t2rq*, %struct.smb_t2rq** %6, align 8
  %25 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %23, i32* %27, align 4
  %28 = load %struct.smb_t2rq*, %struct.smb_t2rq** %6, align 8
  %29 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %28, i32 0, i32 1
  store i32 65535, i32* %29, align 4
  %30 = load %struct.smb_cred*, %struct.smb_cred** %9, align 8
  %31 = load %struct.smb_t2rq*, %struct.smb_t2rq** %6, align 8
  %32 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %31, i32 0, i32 3
  store %struct.smb_cred* %30, %struct.smb_cred** %32, align 8
  %33 = load %struct.smb_connobj*, %struct.smb_connobj** %7, align 8
  %34 = load %struct.smb_t2rq*, %struct.smb_t2rq** %6, align 8
  %35 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %34, i32 0, i32 2
  %36 = call i32 @smb_rq_getenv(%struct.smb_connobj* %33, i32* %35, i32* null)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %4
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %5, align 4
  br label %42

41:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %39
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @bzero(%struct.smb_t2rq*, i32) #1

declare dso_local i32 @smb_rq_getenv(%struct.smb_connobj*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
