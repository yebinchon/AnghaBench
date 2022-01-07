; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/iwmbtfw/extr_iwmbt_fw.c_iwmbt_get_fwname.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/iwmbtfw/extr_iwmbt_fw.c_iwmbt_get_fwname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwmbt_version = type { i32, i32, i32 }
%struct.iwmbt_boot_params = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"%s/ibt-%u-%u.%s\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%s/ibt-%u-%u-%u.%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @iwmbt_get_fwname(%struct.iwmbt_version* %0, %struct.iwmbt_boot_params* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.iwmbt_version*, align 8
  %6 = alloca %struct.iwmbt_boot_params*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.iwmbt_version* %0, %struct.iwmbt_version** %5, align 8
  store %struct.iwmbt_boot_params* %1, %struct.iwmbt_boot_params** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.iwmbt_version*, %struct.iwmbt_version** %5, align 8
  %11 = getelementptr inbounds %struct.iwmbt_version, %struct.iwmbt_version* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %43 [
    i32 11, label %13
    i32 12, label %13
    i32 17, label %25
    i32 18, label %25
    i32 19, label %25
    i32 20, label %25
  ]

13:                                               ; preds = %4, %4
  %14 = load i8*, i8** %7, align 8
  %15 = load %struct.iwmbt_version*, %struct.iwmbt_version** %5, align 8
  %16 = getelementptr inbounds %struct.iwmbt_version, %struct.iwmbt_version* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le16toh(i32 %17)
  %19 = load %struct.iwmbt_boot_params*, %struct.iwmbt_boot_params** %6, align 8
  %20 = getelementptr inbounds %struct.iwmbt_boot_params, %struct.iwmbt_boot_params* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le16toh(i32 %21)
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 (i8**, i8*, i8*, i32, i32, i8*, ...) @asprintf(i8** %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %14, i32 %18, i32 %22, i8* %23)
  br label %44

25:                                               ; preds = %4, %4, %4, %4
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.iwmbt_version*, %struct.iwmbt_version** %5, align 8
  %28 = getelementptr inbounds %struct.iwmbt_version, %struct.iwmbt_version* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le16toh(i32 %29)
  %31 = load %struct.iwmbt_version*, %struct.iwmbt_version** %5, align 8
  %32 = getelementptr inbounds %struct.iwmbt_version, %struct.iwmbt_version* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le16toh(i32 %33)
  %35 = load %struct.iwmbt_version*, %struct.iwmbt_version** %5, align 8
  %36 = getelementptr inbounds %struct.iwmbt_version, %struct.iwmbt_version* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le16toh(i32 %37)
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 (i8**, i8*, i8*, i32, i32, i8*, ...) @asprintf(i8** %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %26, i32 %30, i32 %34, i8* %40, i8* %41)
  br label %44

43:                                               ; preds = %4
  store i8* null, i8** %9, align 8
  br label %44

44:                                               ; preds = %43, %25, %13
  %45 = load i8*, i8** %9, align 8
  ret i8* %45
}

declare dso_local i32 @asprintf(i8**, i8*, i8*, i32, i32, i8*, ...) #1

declare dso_local i32 @le16toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
