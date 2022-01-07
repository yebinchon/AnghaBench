; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/sec/extr_nlmseclib.c_nlm_get_cipher_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/sec/extr_nlmseclib.c_nlm_get_cipher_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlp_sec_command = type { i8*, i8*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NLM_CIPHER_DES = common dso_local global i32 0, align 4
@NLM_CIPHER_MODE_CBC = common dso_local global i8* null, align 8
@XLP_SEC_DES_IV_LENGTH = common dso_local global i8* null, align 8
@NLM_CIPHER_3DES = common dso_local global i32 0, align 4
@NLM_CIPHER_AES128 = common dso_local global i32 0, align 4
@XLP_SEC_AES_IV_LENGTH = common dso_local global i8* null, align 8
@NLM_CIPHER_ARC4 = common dso_local global i32 0, align 4
@NLM_CIPHER_MODE_ECB = common dso_local global i8* null, align 8
@XLP_SEC_ARC4_IV_LENGTH = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlm_get_cipher_param(%struct.xlp_sec_command* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xlp_sec_command*, align 8
  store %struct.xlp_sec_command* %0, %struct.xlp_sec_command** %3, align 8
  %4 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %3, align 8
  %5 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %4, i32 0, i32 3
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %49 [
    i32 128, label %9
    i32 131, label %19
    i32 130, label %29
    i32 129, label %39
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* @NLM_CIPHER_DES, align 4
  %11 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %3, align 8
  %12 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 8
  %13 = load i8*, i8** @NLM_CIPHER_MODE_CBC, align 8
  %14 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %3, align 8
  %15 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** @XLP_SEC_DES_IV_LENGTH, align 8
  %17 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %3, align 8
  %18 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  br label %50

19:                                               ; preds = %1
  %20 = load i32, i32* @NLM_CIPHER_3DES, align 4
  %21 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %3, align 8
  %22 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load i8*, i8** @NLM_CIPHER_MODE_CBC, align 8
  %24 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %3, align 8
  %25 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** @XLP_SEC_DES_IV_LENGTH, align 8
  %27 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %3, align 8
  %28 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  br label %50

29:                                               ; preds = %1
  %30 = load i32, i32* @NLM_CIPHER_AES128, align 4
  %31 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %3, align 8
  %32 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load i8*, i8** @NLM_CIPHER_MODE_CBC, align 8
  %34 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %3, align 8
  %35 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** @XLP_SEC_AES_IV_LENGTH, align 8
  %37 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %3, align 8
  %38 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  br label %50

39:                                               ; preds = %1
  %40 = load i32, i32* @NLM_CIPHER_ARC4, align 4
  %41 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %3, align 8
  %42 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load i8*, i8** @NLM_CIPHER_MODE_ECB, align 8
  %44 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %3, align 8
  %45 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** @XLP_SEC_ARC4_IV_LENGTH, align 8
  %47 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %3, align 8
  %48 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  br label %50

49:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %51

50:                                               ; preds = %39, %29, %19, %9
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %49
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
