; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/autofs/extr_autofs_vnops.c_autofs_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/autofs/extr_autofs_vnops.c_autofs_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_print_args = type { %struct.vnode* }
%struct.vnode = type { %struct.autofs_node* }
%struct.autofs_node = type { i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"    name \22%s\22, fileno %d, cached %d, wildcards %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_print_args*)* @autofs_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs_print(%struct.vop_print_args* %0) #0 {
  %2 = alloca %struct.vop_print_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.autofs_node*, align 8
  store %struct.vop_print_args* %0, %struct.vop_print_args** %2, align 8
  %5 = load %struct.vop_print_args*, %struct.vop_print_args** %2, align 8
  %6 = getelementptr inbounds %struct.vop_print_args, %struct.vop_print_args* %5, i32 0, i32 0
  %7 = load %struct.vnode*, %struct.vnode** %6, align 8
  store %struct.vnode* %7, %struct.vnode** %3, align 8
  %8 = load %struct.vnode*, %struct.vnode** %3, align 8
  %9 = getelementptr inbounds %struct.vnode, %struct.vnode* %8, i32 0, i32 0
  %10 = load %struct.autofs_node*, %struct.autofs_node** %9, align 8
  store %struct.autofs_node* %10, %struct.autofs_node** %4, align 8
  %11 = load %struct.autofs_node*, %struct.autofs_node** %4, align 8
  %12 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.autofs_node*, %struct.autofs_node** %4, align 8
  %15 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.autofs_node*, %struct.autofs_node** %4, align 8
  %18 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.autofs_node*, %struct.autofs_node** %4, align 8
  %21 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %16, i32 %19, i32 %22)
  ret i32 0
}

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
