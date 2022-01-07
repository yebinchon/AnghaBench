; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsrv_dsgetdevandfh.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsrv_dsgetdevandfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }

@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsrv_dsgetdevandfh(%struct.vnode* %0, i32* %1, i32* %2, i32* %3, i8* %4) #0 {
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* %4, i8** %10, align 8
  store i32 1024, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* @M_TEMP, align 4
  %16 = load i32, i32* @M_WAITOK, align 4
  %17 = call i8* @malloc(i32 %14, i32 %15, i32 %16)
  store i8* %17, i8** %13, align 8
  %18 = load %struct.vnode*, %struct.vnode** %6, align 8
  %19 = load i8*, i8** %13, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = call i32 @nfsrv_dsgetsockmnt(%struct.vnode* %18, i32 0, i8* %19, i32* %11, i32* %20, i32* %21, i32* null, i32* %22, i8* %23, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null)
  store i32 %24, i32* %12, align 4
  %25 = load i8*, i8** %13, align 8
  %26 = load i32, i32* @M_TEMP, align 4
  %27 = call i32 @free(i8* %25, i32 %26)
  %28 = load i32, i32* %12, align 4
  ret i32 %28
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @nfsrv_dsgetsockmnt(%struct.vnode*, i32, i8*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
