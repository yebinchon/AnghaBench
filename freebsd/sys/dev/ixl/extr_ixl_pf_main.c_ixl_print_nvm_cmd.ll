; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_print_nvm_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_print_nvm_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_nvm_access = type { i32, i32, i32, i32 }

@I40E_NVM_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"- command: I40E_NVM_READ\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"- command: I40E_NVM_WRITE\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"- command: unknown 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"- config (ptr)  : 0x%02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"- config (flags): 0x%01x\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"- offset : 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"- data_s : 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_print_nvm_cmd(i32 %0, %struct.i40e_nvm_access* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_nvm_access*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.i40e_nvm_access* %1, %struct.i40e_nvm_access** %4, align 8
  %5 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %4, align 8
  %6 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @I40E_NVM_READ, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %2
  %11 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %4, align 8
  %12 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 255
  %15 = icmp eq i32 %14, 15
  br i1 %15, label %16, label %34

16:                                               ; preds = %10
  %17 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %4, align 8
  %18 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 3840
  %21 = ashr i32 %20, 8
  %22 = icmp eq i32 %21, 15
  br i1 %22, label %23, label %34

23:                                               ; preds = %16
  %24 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %4, align 8
  %25 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %4, align 8
  %30 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %82

34:                                               ; preds = %28, %23, %16, %10, %2
  %35 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %4, align 8
  %36 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @I40E_NVM_READ, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %81

41:                                               ; preds = %34
  %42 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %4, align 8
  %43 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %51 [
    i32 11, label %45
    i32 12, label %48
  ]

45:                                               ; preds = %41
  %46 = load i32, i32* %3, align 4
  %47 = call i32 (i32, i8*, ...) @device_printf(i32 %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %57

48:                                               ; preds = %41
  %49 = load i32, i32* %3, align 4
  %50 = call i32 (i32, i8*, ...) @device_printf(i32 %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %57

51:                                               ; preds = %41
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %4, align 8
  %54 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i8*, ...) @device_printf(i32 %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %51, %48, %45
  %58 = load i32, i32* %3, align 4
  %59 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %4, align 8
  %60 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 255
  %63 = call i32 (i32, i8*, ...) @device_printf(i32 %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %3, align 4
  %65 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %4, align 8
  %66 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 3840
  %69 = ashr i32 %68, 8
  %70 = call i32 (i32, i8*, ...) @device_printf(i32 %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %3, align 4
  %72 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %4, align 8
  %73 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i32, i8*, ...) @device_printf(i32 %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %3, align 4
  %77 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %4, align 8
  %78 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i32, i8*, ...) @device_printf(i32 %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %57, %40
  br label %82

82:                                               ; preds = %81, %33
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
