; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/sec/extr_nlmseclib.c_nlm_get_digest_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/sec/extr_nlmseclib.c_nlm_get_digest_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlp_sec_command = type { i8*, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NLM_HASH_MD5 = common dso_local global i8* null, align 8
@NLM_HASH_MODE_SHA1 = common dso_local global i8* null, align 8
@NLM_HASH_SHA = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlm_get_digest_param(%struct.xlp_sec_command* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xlp_sec_command*, align 8
  store %struct.xlp_sec_command* %0, %struct.xlp_sec_command** %3, align 8
  %4 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %3, align 8
  %5 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %37 [
    i32 131, label %9
    i32 129, label %16
    i32 130, label %23
    i32 128, label %30
  ]

9:                                                ; preds = %1
  %10 = load i8*, i8** @NLM_HASH_MD5, align 8
  %11 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %3, align 8
  %12 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %11, i32 0, i32 1
  store i8* %10, i8** %12, align 8
  %13 = load i8*, i8** @NLM_HASH_MODE_SHA1, align 8
  %14 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %3, align 8
  %15 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  br label %38

16:                                               ; preds = %1
  %17 = load i8*, i8** @NLM_HASH_SHA, align 8
  %18 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %3, align 8
  %19 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** @NLM_HASH_MODE_SHA1, align 8
  %21 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %3, align 8
  %22 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  br label %38

23:                                               ; preds = %1
  %24 = load i8*, i8** @NLM_HASH_MD5, align 8
  %25 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %3, align 8
  %26 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** @NLM_HASH_MODE_SHA1, align 8
  %28 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %3, align 8
  %29 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  br label %38

30:                                               ; preds = %1
  %31 = load i8*, i8** @NLM_HASH_SHA, align 8
  %32 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %3, align 8
  %33 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** @NLM_HASH_MODE_SHA1, align 8
  %35 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %3, align 8
  %36 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  br label %38

37:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %39

38:                                               ; preds = %30, %23, %16, %9
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %37
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
