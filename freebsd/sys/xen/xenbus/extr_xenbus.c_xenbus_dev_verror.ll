; ModuleID = '/home/carl/AnghaBench/freebsd/sys/xen/xenbus/extr_xenbus.c_xenbus_dev_verror.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/xen/xenbus/extr_xenbus.c_xenbus_dev_verror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_XENBUS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%i \00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"xenbus error message too big\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Error %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"xenbus: failed to write error node for %s (%s)\0A\00", align 1
@XST_NIL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@PRINTF_BUFFER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xenbus_dev_verror(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %13 = load i32, i32* @M_XENBUS, align 4
  %14 = load i32, i32* @M_WAITOK, align 4
  %15 = call i8* @malloc(i32 4096, i32 %13, i32 %14)
  store i8* %15, i8** %11, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i8*, i8** %11, align 8
  %20 = load i32, i32* %10, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i32, i32* %10, align 4
  %24 = sub i32 4096, %23
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @vsnprintf(i8* %22, i32 %24, i8* %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %9, align 4
  %30 = add i32 %28, %29
  %31 = icmp ule i32 %30, 4095
  %32 = zext i1 %31 to i32
  %33 = call i32 @KASSERT(i32 %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* %5, align 4
  %35 = load i8*, i8** %11, align 8
  %36 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* %5, align 4
  %38 = call i8* @error_path(i32 %37)
  store i8* %38, i8** %12, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %4
  %42 = load i32, i32* %5, align 4
  %43 = call i8* @xenbus_get_node(i32 %42)
  %44 = load i8*, i8** %11, align 8
  %45 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* %43, i8* %44)
  br label %58

46:                                               ; preds = %4
  %47 = load i32, i32* @XST_NIL, align 4
  %48 = load i8*, i8** %12, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = call i64 @xs_write(i32 %47, i8* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load i32, i32* %5, align 4
  %54 = call i8* @xenbus_get_node(i32 %53)
  %55 = load i8*, i8** %11, align 8
  %56 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* %54, i8* %55)
  br label %58

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %57, %52, %41
  %59 = load i8*, i8** %11, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i8*, i8** %11, align 8
  %63 = load i32, i32* @M_XENBUS, align 4
  %64 = call i32 @free(i8* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %58
  %66 = load i8*, i8** %12, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i8*, i8** %12, align 8
  %70 = load i32, i32* @M_XENBUS, align 4
  %71 = call i32 @free(i8* %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %65
  ret void
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @vsnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, i8*) #1

declare dso_local i8* @error_path(i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i8* @xenbus_get_node(i32) #1

declare dso_local i64 @xs_write(i32, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
