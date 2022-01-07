; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_lookup.c_readde.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_lookup.c_readde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.denode = type { i32, i32, i32 }
%struct.buf = type { i32 }
%struct.direntry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @readde(%struct.denode* %0, %struct.buf** %1, %struct.direntry** %2) #0 {
  %4 = alloca %struct.denode*, align 8
  %5 = alloca %struct.buf**, align 8
  %6 = alloca %struct.direntry**, align 8
  store %struct.denode* %0, %struct.denode** %4, align 8
  store %struct.buf** %1, %struct.buf*** %5, align 8
  store %struct.direntry** %2, %struct.direntry*** %6, align 8
  %7 = load %struct.denode*, %struct.denode** %4, align 8
  %8 = getelementptr inbounds %struct.denode, %struct.denode* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.denode*, %struct.denode** %4, align 8
  %11 = getelementptr inbounds %struct.denode, %struct.denode* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.denode*, %struct.denode** %4, align 8
  %14 = getelementptr inbounds %struct.denode, %struct.denode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.buf**, %struct.buf*** %5, align 8
  %17 = load %struct.direntry**, %struct.direntry*** %6, align 8
  %18 = call i32 @readep(i32 %9, i32 %12, i32 %15, %struct.buf** %16, %struct.direntry** %17)
  ret i32 %18
}

declare dso_local i32 @readep(i32, i32, i32, %struct.buf**, %struct.direntry**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
