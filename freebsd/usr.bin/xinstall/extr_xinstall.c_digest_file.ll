; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/xinstall/extr_xinstall.c_digest_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/xinstall/extr_xinstall.c_digest_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@digesttype = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @digest_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @digest_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i32, i32* @digesttype, align 4
  switch i32 %4, label %20 [
    i32 132, label %5
    i32 131, label %8
    i32 130, label %11
    i32 129, label %14
    i32 128, label %17
  ]

5:                                                ; preds = %1
  %6 = load i8*, i8** %3, align 8
  %7 = call i8* @MD5File(i8* %6, i32* null)
  store i8* %7, i8** %2, align 8
  br label %21

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @RIPEMD160_File(i8* %9, i32* null)
  store i8* %10, i8** %2, align 8
  br label %21

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i8* @SHA1_File(i8* %12, i32* null)
  store i8* %13, i8** %2, align 8
  br label %21

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = call i8* @SHA256_File(i8* %15, i32* null)
  store i8* %16, i8** %2, align 8
  br label %21

17:                                               ; preds = %1
  %18 = load i8*, i8** %3, align 8
  %19 = call i8* @SHA512_File(i8* %18, i32* null)
  store i8* %19, i8** %2, align 8
  br label %21

20:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %21

21:                                               ; preds = %20, %17, %14, %11, %8, %5
  %22 = load i8*, i8** %2, align 8
  ret i8* %22
}

declare dso_local i8* @MD5File(i8*, i32*) #1

declare dso_local i8* @RIPEMD160_File(i8*, i32*) #1

declare dso_local i8* @SHA1_File(i8*, i32*) #1

declare dso_local i8* @SHA256_File(i8*, i32*) #1

declare dso_local i8* @SHA512_File(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
