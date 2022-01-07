; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/efibootmgr/extr_efibootmgr.c_read_vars.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/efibootmgr/extr_efibootmgr.c_read_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i32, i32, i32, i32, i32, i32 }

@efivars = common dso_local global i32 0, align 4
@EFI_GLOBAL_GUID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Boot\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"efi_get_variable\00", align 1
@entries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @read_vars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_vars() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.entry*, align 8
  store i8* null, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = call i32 @LIST_INIT(i32* @efivars)
  br label %6

6:                                                ; preds = %66, %45, %0
  %7 = call i32 @efi_get_next_variable_name(i32** %1, i8** %2)
  store i32 %7, i32* %3, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %79

9:                                                ; preds = %6
  %10 = load i32*, i32** %1, align 8
  %11 = call i64 @efi_guid_cmp(i32* %10, i32* @EFI_GLOBAL_GUID)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %45, label %13

13:                                               ; preds = %9
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = icmp ne i32 %15, 8
  br i1 %16, label %45, label %17

17:                                               ; preds = %13
  %18 = load i8*, i8** %2, align 8
  %19 = call i64 @strncmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %45, label %21

21:                                               ; preds = %17
  %22 = load i8*, i8** %2, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 4
  %24 = load i8, i8* %23, align 1
  %25 = call i32 @isxdigit(i8 signext %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %21
  %28 = load i8*, i8** %2, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 5
  %30 = load i8, i8* %29, align 1
  %31 = call i32 @isxdigit(i8 signext %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = load i8*, i8** %2, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 6
  %36 = load i8, i8* %35, align 1
  %37 = call i32 @isxdigit(i8 signext %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load i8*, i8** %2, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 7
  %42 = load i8, i8* %41, align 1
  %43 = call i32 @isxdigit(i8 signext %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39, %33, %27, %21, %17, %13, %9
  br label %6

46:                                               ; preds = %39
  %47 = call %struct.entry* @malloc(i32 24)
  store %struct.entry* %47, %struct.entry** %4, align 8
  %48 = load i8*, i8** %2, align 8
  %49 = call i32 @strdup(i8* %48)
  %50 = load %struct.entry*, %struct.entry** %4, align 8
  %51 = getelementptr inbounds %struct.entry, %struct.entry* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  %52 = load i32*, i32** %1, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %2, align 8
  %55 = load %struct.entry*, %struct.entry** %4, align 8
  %56 = getelementptr inbounds %struct.entry, %struct.entry* %55, i32 0, i32 4
  %57 = load %struct.entry*, %struct.entry** %4, align 8
  %58 = getelementptr inbounds %struct.entry, %struct.entry* %57, i32 0, i32 3
  %59 = load %struct.entry*, %struct.entry** %4, align 8
  %60 = getelementptr inbounds %struct.entry, %struct.entry* %59, i32 0, i32 2
  %61 = call i32 @efi_get_variable(i32 %53, i8* %54, i32* %56, i32* %58, i32* %60)
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %46
  %65 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %46
  %67 = load i32*, i32** %1, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.entry*, %struct.entry** %4, align 8
  %70 = getelementptr inbounds %struct.entry, %struct.entry* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i8*, i8** %2, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 4
  %73 = call i32 @strtoul(i8* %72, i32* null, i32 16)
  %74 = load %struct.entry*, %struct.entry** %4, align 8
  %75 = getelementptr inbounds %struct.entry, %struct.entry* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.entry*, %struct.entry** %4, align 8
  %77 = load i32, i32* @entries, align 4
  %78 = call i32 @LIST_INSERT_HEAD(i32* @efivars, %struct.entry* %76, i32 %77)
  br label %6

79:                                               ; preds = %6
  ret void
}

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @efi_get_next_variable_name(i32**, i8**) #1

declare dso_local i64 @efi_guid_cmp(i32*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @isxdigit(i8 signext) #1

declare dso_local %struct.entry* @malloc(i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @efi_get_variable(i32, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
