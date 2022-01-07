; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mountroot.c_vfs_mountroot_conf0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mountroot.c_vfs_mountroot_conf0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c".onfail panic\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c".timeout %d\0A\00", align 1
@root_mount_timeout = common dso_local global i32 0, align 4
@boothowto = common dso_local global i32 0, align 4
@RB_ASKNAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c".ask\0A\00", align 1
@RB_CDROM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"cd9660:/dev/cd0 ro\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c".timeout 0\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"cd9660:/dev/cd1 ro\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"vfs.root.mountfrom\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"vfs.root.mountfrom.options\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@M_TEMP = common dso_local global i32 0, align 4
@rootdevnames = common dso_local global i32** null, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@RB_DFLTROOT = common dso_local global i32 0, align 4
@ROOTDEVNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbuf*)* @vfs_mountroot_conf0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfs_mountroot_conf0(%struct.sbuf* %0) #0 {
  %2 = alloca %struct.sbuf*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.sbuf* %0, %struct.sbuf** %2, align 8
  %8 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %9 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %11 = load i32, i32* @root_mount_timeout, align 4
  %12 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @boothowto, align 4
  %14 = load i32, i32* @RB_ASKNAME, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %19 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %1
  %21 = load i32, i32* @boothowto, align 4
  %22 = load i32, i32* @RB_CDROM, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %27 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %28 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %29 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %30 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %31 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %32 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %33 = load i32, i32* @root_mount_timeout, align 4
  %34 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %25, %20
  %36 = call i8* @kern_getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  store i8* %36, i8** %3, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %71

39:                                               ; preds = %35
  %40 = call i8* @kern_getenv(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  store i8* %40, i8** %6, align 8
  %41 = load i8*, i8** %3, align 8
  store i8* %41, i8** %4, align 8
  %42 = call i32 @parse_token(i8** %4, i8** %5)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %55, %39
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br i1 %46, label %47, label %62

47:                                               ; preds = %43
  %48 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i8*, i8** %6, align 8
  br label %55

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i8* [ %53, %52 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), %54 ]
  %57 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %49, i8* %56)
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* @M_TEMP, align 4
  %60 = call i32 @free(i8* %58, i32 %59)
  %61 = call i32 @parse_token(i8** %4, i8** %5)
  store i32 %61, i32* %7, align 4
  br label %43

62:                                               ; preds = %43
  %63 = load i8*, i8** %6, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @freeenv(i8* %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i8*, i8** %3, align 8
  %70 = call i32 @freeenv(i8* %69)
  br label %71

71:                                               ; preds = %68, %35
  %72 = load i32**, i32*** @rootdevnames, align 8
  %73 = getelementptr inbounds i32*, i32** %72, i64 0
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %78 = load i32**, i32*** @rootdevnames, align 8
  %79 = getelementptr inbounds i32*, i32** %78, i64 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32* %80)
  br label %82

82:                                               ; preds = %76, %71
  %83 = load i32**, i32*** @rootdevnames, align 8
  %84 = getelementptr inbounds i32*, i32** %83, i64 1
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %89 = load i32**, i32*** @rootdevnames, align 8
  %90 = getelementptr inbounds i32*, i32** %89, i64 1
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32* %91)
  br label %93

93:                                               ; preds = %87, %82
  %94 = load i32, i32* @boothowto, align 4
  %95 = load i32, i32* @RB_ASKNAME, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %93
  %99 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %100 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %93
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

declare dso_local i8* @kern_getenv(i8*) #1

declare dso_local i32 @parse_token(i8**, i8**) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @freeenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
