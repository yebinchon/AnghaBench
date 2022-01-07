; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/efibootmgr/extr_efibootmgr.c_delete_bootvar.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/efibootmgr/extr_efibootmgr.c_delete_bootvar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Bad boot variable %#x\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s%04X\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Boot\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"asprintf\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Removing boot variable '%s'\0A\00", align 1
@EFI_GLOBAL_GUID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"cannot delete variable %s\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Removing 0x%x from BootOrder\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @delete_bootvar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_bootvar(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp sgt i32 %8, 65535
  br i1 %9, label %10, label %13

10:                                               ; preds = %7, %1
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %13

13:                                               ; preds = %10, %7
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @asprintf(i8** %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %14)
  %16 = load i8*, i8** %3, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %13
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %21)
  %23 = load i32, i32* @EFI_GLOBAL_GUID, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @efi_del_variable(i32 %23, i8* %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %27, %20
  %31 = load i32, i32* %2, align 4
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @remove_from_order(i32 %33)
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @free(i8* %35)
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @exit(i32 %40) #3
  unreachable

42:                                               ; preds = %30
  ret void
}

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @efi_del_variable(i32, i8*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @remove_from_order(i32) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
