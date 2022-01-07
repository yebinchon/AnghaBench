; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/autofs/extr_autofs.c_autofs_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/autofs/extr_autofs.c_autofs_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autofs_node = type { i8*, %struct.autofs_node*, %struct.autofs_mount* }
%struct.autofs_mount = type { i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@M_AUTOFS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.autofs_node*)* @autofs_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @autofs_path(%struct.autofs_node* %0) #0 {
  %2 = alloca %struct.autofs_node*, align 8
  %3 = alloca %struct.autofs_mount*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.autofs_node* %0, %struct.autofs_node** %2, align 8
  %6 = load %struct.autofs_node*, %struct.autofs_node** %2, align 8
  %7 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %6, i32 0, i32 2
  %8 = load %struct.autofs_mount*, %struct.autofs_mount** %7, align 8
  store %struct.autofs_mount* %8, %struct.autofs_mount** %3, align 8
  %9 = load i32, i32* @M_AUTOFS, align 4
  %10 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %9)
  store i8* %10, i8** %4, align 8
  br label %11

11:                                               ; preds = %42, %1
  %12 = load %struct.autofs_node*, %struct.autofs_node** %2, align 8
  %13 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %12, i32 0, i32 1
  %14 = load %struct.autofs_node*, %struct.autofs_node** %13, align 8
  %15 = icmp ne %struct.autofs_node* %14, null
  br i1 %15, label %16, label %46

16:                                               ; preds = %11
  %17 = load %struct.autofs_node*, %struct.autofs_node** %2, align 8
  %18 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @strlen(i8* %19)
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @strlen(i8* %21)
  %23 = add nsw i64 %20, %22
  %24 = add nsw i64 %23, 2
  %25 = load i32, i32* @M_AUTOFS, align 4
  %26 = load i32, i32* @M_WAITOK, align 4
  %27 = call i8* @malloc(i64 %24, i32 %25, i32 %26)
  store i8* %27, i8** %5, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.autofs_node*, %struct.autofs_node** %2, align 8
  %30 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strcpy(i8* %28, i8* %31)
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @strcat(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i8*, i8** %5, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @strcat(i8* %35, i8* %36)
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* @M_AUTOFS, align 4
  %40 = call i32 @free(i8* %38, i32 %39)
  %41 = load i8*, i8** %5, align 8
  store i8* %41, i8** %4, align 8
  br label %42

42:                                               ; preds = %16
  %43 = load %struct.autofs_node*, %struct.autofs_node** %2, align 8
  %44 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %43, i32 0, i32 1
  %45 = load %struct.autofs_node*, %struct.autofs_node** %44, align 8
  store %struct.autofs_node* %45, %struct.autofs_node** %2, align 8
  br label %11

46:                                               ; preds = %11
  %47 = load %struct.autofs_mount*, %struct.autofs_mount** %3, align 8
  %48 = getelementptr inbounds %struct.autofs_mount, %struct.autofs_mount* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @strlen(i8* %49)
  %51 = load i8*, i8** %4, align 8
  %52 = call i64 @strlen(i8* %51)
  %53 = add nsw i64 %50, %52
  %54 = add nsw i64 %53, 2
  %55 = load i32, i32* @M_AUTOFS, align 4
  %56 = load i32, i32* @M_WAITOK, align 4
  %57 = call i8* @malloc(i64 %54, i32 %55, i32 %56)
  store i8* %57, i8** %5, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = load %struct.autofs_mount*, %struct.autofs_mount** %3, align 8
  %60 = getelementptr inbounds %struct.autofs_mount, %struct.autofs_mount* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @strcpy(i8* %58, i8* %61)
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @strcat(i8* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i8*, i8** %5, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @strcat(i8* %65, i8* %66)
  %68 = load i8*, i8** %4, align 8
  %69 = load i32, i32* @M_AUTOFS, align 4
  %70 = call i32 @free(i8* %68, i32 %69)
  %71 = load i8*, i8** %5, align 8
  store i8* %71, i8** %4, align 8
  %72 = load i8*, i8** %4, align 8
  ret i8* %72
}

declare dso_local i8* @strdup(i8*, i32) #1

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
