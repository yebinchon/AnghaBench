; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_vga.c_vga_port_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_vga.c_vga_port_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, i32, i32, i32, i32, i32*, i8*)* @vga_port_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga_port_handler(%struct.vmctx* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vmctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i8* %6, i8** %15, align 8
  %18 = load i32, i32* %13, align 4
  switch i32 %18, label %110 [
    i32 1, label %19
    i32 2, label %51
  ]

19:                                               ; preds = %7
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %19
  %23 = load i32*, i32** %14, align 8
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, -256
  store i32 %25, i32* %23, align 4
  %26 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i8*, i8** %15, align 8
  %30 = call i32 @vga_port_in_handler(%struct.vmctx* %26, i32 %27, i32 %28, i32 1, i32* %16, i8* %29)
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* %17, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %16, align 4
  %35 = and i32 %34, 255
  %36 = load i32*, i32** %14, align 8
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %33, %22
  br label %50

40:                                               ; preds = %19
  %41 = load i32*, i32** %14, align 8
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 255
  store i32 %43, i32* %16, align 4
  %44 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %16, align 4
  %48 = load i8*, i8** %15, align 8
  %49 = call i32 @vga_port_out_handler(%struct.vmctx* %44, i32 %45, i32 %46, i32 1, i32 %47, i8* %48)
  store i32 %49, i32* %17, align 4
  br label %50

50:                                               ; preds = %40, %39
  br label %112

51:                                               ; preds = %7
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %88

54:                                               ; preds = %51
  %55 = load i32*, i32** %14, align 8
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, -65536
  store i32 %57, i32* %55, align 4
  %58 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i8*, i8** %15, align 8
  %62 = call i32 @vga_port_in_handler(%struct.vmctx* %58, i32 %59, i32 %60, i32 1, i32* %16, i8* %61)
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %17, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %54
  %66 = load i32, i32* %16, align 4
  %67 = and i32 %66, 255
  %68 = load i32*, i32** %14, align 8
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %67
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %54
  %72 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  %76 = load i8*, i8** %15, align 8
  %77 = call i32 @vga_port_in_handler(%struct.vmctx* %72, i32 %73, i32 %75, i32 1, i32* %16, i8* %76)
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %17, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %71
  %81 = load i32, i32* %16, align 4
  %82 = and i32 %81, 255
  %83 = shl i32 %82, 8
  %84 = load i32*, i32** %14, align 8
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %83
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %80, %71
  br label %109

88:                                               ; preds = %51
  %89 = load i32*, i32** %14, align 8
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 255
  store i32 %91, i32* %16, align 4
  %92 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %16, align 4
  %96 = load i8*, i8** %15, align 8
  %97 = call i32 @vga_port_out_handler(%struct.vmctx* %92, i32 %93, i32 %94, i32 1, i32 %95, i8* %96)
  store i32 %97, i32* %17, align 4
  %98 = load i32*, i32** %14, align 8
  %99 = load i32, i32* %98, align 4
  %100 = ashr i32 %99, 8
  %101 = and i32 %100, 255
  store i32 %101, i32* %16, align 4
  %102 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  %106 = load i32, i32* %16, align 4
  %107 = load i8*, i8** %15, align 8
  %108 = call i32 @vga_port_out_handler(%struct.vmctx* %102, i32 %103, i32 %105, i32 1, i32 %106, i8* %107)
  store i32 %108, i32* %17, align 4
  br label %109

109:                                              ; preds = %88, %87
  br label %112

110:                                              ; preds = %7
  %111 = call i32 @assert(i32 0)
  store i32 -1, i32* %8, align 4
  br label %114

112:                                              ; preds = %109, %50
  %113 = load i32, i32* %17, align 4
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %112, %110
  %115 = load i32, i32* %8, align 4
  ret i32 %115
}

declare dso_local i32 @vga_port_in_handler(%struct.vmctx*, i32, i32, i32, i32*, i8*) #1

declare dso_local i32 @vga_port_out_handler(%struct.vmctx*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
