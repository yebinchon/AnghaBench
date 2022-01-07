; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/sec/extr_nlmrsa.c_xlp_get_rsa_opsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/sec/extr_nlmrsa.c_xlp_get_rsa_opsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlp_rsa_command = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xlp_rsa_command*, i32)* @xlp_get_rsa_opsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlp_get_rsa_opsize(%struct.xlp_rsa_command* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xlp_rsa_command*, align 8
  %5 = alloca i32, align 4
  store %struct.xlp_rsa_command* %0, %struct.xlp_rsa_command** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp ugt i32 %9, 8192
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  store i32 -1, i32* %3, align 4
  br label %57

12:                                               ; preds = %8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ule i32 %13, 512
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load %struct.xlp_rsa_command*, %struct.xlp_rsa_command** %4, align 8
  %17 = getelementptr inbounds %struct.xlp_rsa_command, %struct.xlp_rsa_command* %16, i32 0, i32 0
  store i32 64, i32* %17, align 4
  %18 = load %struct.xlp_rsa_command*, %struct.xlp_rsa_command** %4, align 8
  %19 = getelementptr inbounds %struct.xlp_rsa_command, %struct.xlp_rsa_command* %18, i32 0, i32 1
  store i32 64, i32* %19, align 4
  br label %56

20:                                               ; preds = %12
  %21 = load i32, i32* %5, align 4
  %22 = icmp ule i32 %21, 1024
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.xlp_rsa_command*, %struct.xlp_rsa_command** %4, align 8
  %25 = getelementptr inbounds %struct.xlp_rsa_command, %struct.xlp_rsa_command* %24, i32 0, i32 0
  store i32 65, i32* %25, align 4
  %26 = load %struct.xlp_rsa_command*, %struct.xlp_rsa_command** %4, align 8
  %27 = getelementptr inbounds %struct.xlp_rsa_command, %struct.xlp_rsa_command* %26, i32 0, i32 1
  store i32 128, i32* %27, align 4
  br label %55

28:                                               ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = icmp ule i32 %29, 2048
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load %struct.xlp_rsa_command*, %struct.xlp_rsa_command** %4, align 8
  %33 = getelementptr inbounds %struct.xlp_rsa_command, %struct.xlp_rsa_command* %32, i32 0, i32 0
  store i32 66, i32* %33, align 4
  %34 = load %struct.xlp_rsa_command*, %struct.xlp_rsa_command** %4, align 8
  %35 = getelementptr inbounds %struct.xlp_rsa_command, %struct.xlp_rsa_command* %34, i32 0, i32 1
  store i32 256, i32* %35, align 4
  br label %54

36:                                               ; preds = %28
  %37 = load i32, i32* %5, align 4
  %38 = icmp ule i32 %37, 4096
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.xlp_rsa_command*, %struct.xlp_rsa_command** %4, align 8
  %41 = getelementptr inbounds %struct.xlp_rsa_command, %struct.xlp_rsa_command* %40, i32 0, i32 0
  store i32 67, i32* %41, align 4
  %42 = load %struct.xlp_rsa_command*, %struct.xlp_rsa_command** %4, align 8
  %43 = getelementptr inbounds %struct.xlp_rsa_command, %struct.xlp_rsa_command* %42, i32 0, i32 1
  store i32 512, i32* %43, align 4
  br label %53

44:                                               ; preds = %36
  %45 = load i32, i32* %5, align 4
  %46 = icmp ule i32 %45, 8192
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load %struct.xlp_rsa_command*, %struct.xlp_rsa_command** %4, align 8
  %49 = getelementptr inbounds %struct.xlp_rsa_command, %struct.xlp_rsa_command* %48, i32 0, i32 0
  store i32 68, i32* %49, align 4
  %50 = load %struct.xlp_rsa_command*, %struct.xlp_rsa_command** %4, align 8
  %51 = getelementptr inbounds %struct.xlp_rsa_command, %struct.xlp_rsa_command* %50, i32 0, i32 1
  store i32 1024, i32* %51, align 4
  br label %52

52:                                               ; preds = %47, %44
  br label %53

53:                                               ; preds = %52, %39
  br label %54

54:                                               ; preds = %53, %31
  br label %55

55:                                               ; preds = %54, %23
  br label %56

56:                                               ; preds = %55, %15
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %11
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
